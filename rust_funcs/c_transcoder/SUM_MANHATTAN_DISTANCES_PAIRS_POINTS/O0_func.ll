define i32 @f_gold(i64 %0, i64 %1, i32 %n) unnamed_addr #3 {
start:
  %_17 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_8 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %sum = alloca [4 x i8], align 4
  %2 = alloca [8 x i8], align 8
  %y = alloca [8 x i8], align 4
  %3 = alloca [8 x i8], align 8
  %x = alloca [8 x i8], align 4
  store i64 %0, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %x, ptr align 8 %3, i64 8, i1 false)
  store i64 %1, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %y, ptr align 8 %2, i64 8, i1 false)
  store i32 0, ptr %sum, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %4 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb5808cb76358b1d9E"(i32 0, i32 %n) #21
  %_5.0 = extractvalue { i32, i32 } %4, 0
  %_5.1 = extractvalue { i32, i32 } %4, 1
  store i32 %_5.0, ptr %iter, align 4
  %5 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_5.1, ptr %5, align 4
  br label %bb2

bb2:                                              ; preds = %bb9, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %6 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h140cd4f84acb8b2aE"(ptr align 4 %iter) #21
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = extractvalue { i32, i32 } %6, 1
  store i32 %7, ptr %_8, align 4
  %9 = getelementptr inbounds i8, ptr %_8, i64 4
  store i32 %8, ptr %9, align 4
  %10 = load i32, ptr %_8, align 4
  %11 = getelementptr inbounds i8, ptr %_8, i64 4
  %12 = load i32, ptr %11, align 4
  %_10 = zext i32 %10 to i64
  %13 = trunc nuw i64 %_10 to i1
  br i1 %13, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %14 = getelementptr inbounds i8, ptr %_8, i64 4
  %i = load i32, ptr %14, align 4
  %15 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 1)
  %_15.0 = extractvalue { i32, i1 } %15, 0
  %_15.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_15.1, label %panic, label %bb7

bb6:                                              ; preds = %bb2
  %_0 = load i32, ptr %sum, align 4
  ret i32 %_0

bb7:                                              ; preds = %bb5
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %16 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb5808cb76358b1d9E"(i32 %_15.0, i32 %n) #21
  %_12.0 = extractvalue { i32, i32 } %16, 0
  %_12.1 = extractvalue { i32, i32 } %16, 1
  store i32 %_12.0, ptr %iter1, align 4
  %17 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_12.1, ptr %17, align 4
  br label %bb9

panic:                                            ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_7054e8ee08ac507676b21ea17177fcfc) #20
  unreachable

bb9:                                              ; preds = %bb21, %bb7
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %18 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h140cd4f84acb8b2aE"(ptr align 4 %iter1) #21
  %19 = extractvalue { i32, i32 } %18, 0
  %20 = extractvalue { i32, i32 } %18, 1
  store i32 %19, ptr %_17, align 4
  %21 = getelementptr inbounds i8, ptr %_17, i64 4
  store i32 %20, ptr %21, align 4
  %22 = load i32, ptr %_17, align 4
  %23 = getelementptr inbounds i8, ptr %_17, i64 4
  %24 = load i32, ptr %23, align 4
  %_19 = zext i32 %22 to i64
  %25 = trunc nuw i64 %_19 to i1
  br i1 %25, label %bb11, label %bb2

bb11:                                             ; preds = %bb9
  %26 = getelementptr inbounds i8, ptr %_17, i64 4
  %j = load i32, ptr %26, align 4
  %_25 = sext i32 %i to i64
  %_26 = icmp ult i64 %_25, 2
  br i1 %_26, label %bb12, label %panic2

bb12:                                             ; preds = %bb11
  %27 = getelementptr inbounds nuw i32, ptr %x, i64 %_25
  %_24 = load i32, ptr %27, align 4
  %_28 = sext i32 %j to i64
  %_29 = icmp ult i64 %_28, 2
  br i1 %_29, label %bb13, label %panic3

panic2:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_25, i64 2, ptr align 8 @alloc_7a6b02e38f3e82117ab3545ccc185184) #20
  unreachable

bb13:                                             ; preds = %bb12
  %28 = getelementptr inbounds nuw i32, ptr %x, i64 %_28
  %_27 = load i32, ptr %28, align 4
  %29 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_24, i32 %_27)
  %_30.0 = extractvalue { i32, i1 } %29, 0
  %_30.1 = extractvalue { i32, i1 } %29, 1
  br i1 %_30.1, label %panic4, label %bb14

panic3:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_28, i64 2, ptr align 8 @alloc_177a7d8e245019be06045496f1d54e58) #20
  unreachable

bb14:                                             ; preds = %bb13
; call core::num::<impl i32>::abs
  %_22 = call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17h44a681e375052d0cE"(i32 %_30.0) #21
  %_34 = sext i32 %i to i64
  %_35 = icmp ult i64 %_34, 2
  br i1 %_35, label %bb16, label %panic5

panic4:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3319687f0c01373922bf77eec067297f) #20
  unreachable

bb16:                                             ; preds = %bb14
  %30 = getelementptr inbounds nuw i32, ptr %y, i64 %_34
  %_33 = load i32, ptr %30, align 4
  %_37 = sext i32 %j to i64
  %_38 = icmp ult i64 %_37, 2
  br i1 %_38, label %bb17, label %panic6

panic5:                                           ; preds = %bb14
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_34, i64 2, ptr align 8 @alloc_980a38df1b858b47d1a7fe40c8b2ceea) #20
  unreachable

bb17:                                             ; preds = %bb16
  %31 = getelementptr inbounds nuw i32, ptr %y, i64 %_37
  %_36 = load i32, ptr %31, align 4
  %32 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_33, i32 %_36)
  %_39.0 = extractvalue { i32, i1 } %32, 0
  %_39.1 = extractvalue { i32, i1 } %32, 1
  br i1 %_39.1, label %panic7, label %bb18

panic6:                                           ; preds = %bb16
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_37, i64 2, ptr align 8 @alloc_32918bcd97d2203736cd0c1c19f01b03) #20
  unreachable

bb18:                                             ; preds = %bb17
; call core::num::<impl i32>::abs
  %_31 = call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17h44a681e375052d0cE"(i32 %_39.0) #21
  %33 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_22, i32 %_31)
  %_40.0 = extractvalue { i32, i1 } %33, 0
  %_40.1 = extractvalue { i32, i1 } %33, 1
  br i1 %_40.1, label %panic8, label %bb20

panic7:                                           ; preds = %bb17
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_b0df14ba5a7af1ae1377e4e2823deec0) #20
  unreachable

bb20:                                             ; preds = %bb18
  %34 = load i32, ptr %sum, align 4
  %35 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %34, i32 %_40.0)
  %_41.0 = extractvalue { i32, i1 } %35, 0
  %_41.1 = extractvalue { i32, i1 } %35, 1
  br i1 %_41.1, label %panic9, label %bb21

panic8:                                           ; preds = %bb18
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_3319687f0c01373922bf77eec067297f) #20
  unreachable

bb21:                                             ; preds = %bb20
  store i32 %_41.0, ptr %sum, align 4
  br label %bb9

panic9:                                           ; preds = %bb20
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_67536961385e3d23ceb4d42d8b3c44c6) #20
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

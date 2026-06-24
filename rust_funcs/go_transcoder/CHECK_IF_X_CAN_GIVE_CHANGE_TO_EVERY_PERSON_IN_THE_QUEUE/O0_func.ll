define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_8 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %ten_count = alloca [4 x i8], align 4
  %five_count = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %notes = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %notes, ptr align 8 %1, i64 8, i1 false)
  store i32 0, ptr %five_count, align 4
  store i32 0, ptr %ten_count, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcdfe8095cc6c6c20E"(i32 0, i32 %n) #20
  %_5.0 = extractvalue { i32, i32 } %2, 0
  %_5.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_5.0, ptr %iter, align 4
  %3 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_5.1, ptr %3, align 4
  br label %bb2

bb2:                                              ; preds = %bb9, %bb15, %bb21, %bb24, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hc74a3f0461f585f9E"(ptr align 4 %iter) #20
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = extractvalue { i32, i32 } %4, 1
  store i32 %5, ptr %_8, align 4
  %7 = getelementptr inbounds i8, ptr %_8, i64 4
  store i32 %6, ptr %7, align 4
  %8 = load i32, ptr %_8, align 4
  %9 = getelementptr inbounds i8, ptr %_8, i64 4
  %10 = load i32, ptr %9, align 4
  %_10 = zext i32 %8 to i64
  %11 = trunc nuw i64 %_10 to i1
  br i1 %11, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %12 = getelementptr inbounds i8, ptr %_8, i64 4
  %i = load i32, ptr %12, align 4
  %_14 = sext i32 %i to i64
  %_15 = icmp ult i64 %_14, 2
  br i1 %_15, label %bb7, label %panic

bb6:                                              ; preds = %bb2
  store i32 1, ptr %_0, align 4
  br label %bb26

bb26:                                             ; preds = %bb16, %bb25, %bb6
  %13 = load i32, ptr %_0, align 4
  ret i32 %13

bb7:                                              ; preds = %bb5
  %14 = getelementptr inbounds nuw i32, ptr %notes, i64 %_14
  %_13 = load i32, ptr %14, align 4
  %_12 = icmp eq i32 %_13, 5
  br i1 %_12, label %bb8, label %bb10

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_14, i64 2, ptr align 8 @alloc_48da0e2ec17418c2c88ddaded5b6f2c7) #22
  unreachable

bb10:                                             ; preds = %bb7
  %_19 = sext i32 %i to i64
  %_20 = icmp ult i64 %_19, 2
  br i1 %_20, label %bb11, label %panic1

bb8:                                              ; preds = %bb7
  %15 = load i32, ptr %five_count, align 4
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %15, i32 1)
  %_16.0 = extractvalue { i32, i1 } %16, 0
  %_16.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_16.1, label %panic7, label %bb9

bb11:                                             ; preds = %bb10
  %17 = getelementptr inbounds nuw i32, ptr %notes, i64 %_19
  %_18 = load i32, ptr %17, align 4
  %_17 = icmp eq i32 %_18, 10
  br i1 %_17, label %bb12, label %bb17

panic1:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_19, i64 2, ptr align 8 @alloc_04a06619534dab080c28a272beef45b3) #22
  unreachable

bb17:                                             ; preds = %bb11
  %_26 = load i32, ptr %five_count, align 4
  %_25 = icmp sgt i32 %_26, 0
  br i1 %_25, label %bb18, label %bb22

bb12:                                             ; preds = %bb11
  %_22 = load i32, ptr %five_count, align 4
  %_21 = icmp sgt i32 %_22, 0
  br i1 %_21, label %bb13, label %bb16

bb22:                                             ; preds = %bb18, %bb17
  %_32 = load i32, ptr %five_count, align 4
  %_31 = icmp sge i32 %_32, 3
  br i1 %_31, label %bb23, label %bb25

bb18:                                             ; preds = %bb17
  %_28 = load i32, ptr %ten_count, align 4
  %_27 = icmp sgt i32 %_28, 0
  br i1 %_27, label %bb19, label %bb22

bb19:                                             ; preds = %bb18
  %18 = load i32, ptr %five_count, align 4
  %19 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %18, i32 1)
  %_29.0 = extractvalue { i32, i1 } %19, 0
  %_29.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_29.1, label %panic3, label %bb20

bb25:                                             ; preds = %bb22
  store i32 0, ptr %_0, align 4
  br label %bb26

bb23:                                             ; preds = %bb22
  %20 = load i32, ptr %five_count, align 4
  %21 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %20, i32 3)
  %_33.0 = extractvalue { i32, i1 } %21, 0
  %_33.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_33.1, label %panic2, label %bb24

bb24:                                             ; preds = %bb23
  store i32 %_33.0, ptr %five_count, align 4
  br label %bb2

panic2:                                           ; preds = %bb23
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_0e6d42ed88bb8e8ff6a506c40d6fa226) #22
  unreachable

bb20:                                             ; preds = %bb19
  store i32 %_29.0, ptr %five_count, align 4
  %22 = load i32, ptr %ten_count, align 4
  %23 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %22, i32 1)
  %_30.0 = extractvalue { i32, i1 } %23, 0
  %_30.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_30.1, label %panic4, label %bb21

panic3:                                           ; preds = %bb19
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_8d75b9c65452e96653b67777deea8b10) #22
  unreachable

bb21:                                             ; preds = %bb20
  store i32 %_30.0, ptr %ten_count, align 4
  br label %bb2

panic4:                                           ; preds = %bb20
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_1e4853401f9faf405cd30ef99b3b31ec) #22
  unreachable

bb16:                                             ; preds = %bb12
  store i32 0, ptr %_0, align 4
  br label %bb26

bb13:                                             ; preds = %bb12
  %24 = load i32, ptr %five_count, align 4
  %25 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %24, i32 1)
  %_23.0 = extractvalue { i32, i1 } %25, 0
  %_23.1 = extractvalue { i32, i1 } %25, 1
  br i1 %_23.1, label %panic5, label %bb14

bb14:                                             ; preds = %bb13
  store i32 %_23.0, ptr %five_count, align 4
  %26 = load i32, ptr %ten_count, align 4
  %27 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %26, i32 1)
  %_24.0 = extractvalue { i32, i1 } %27, 0
  %_24.1 = extractvalue { i32, i1 } %27, 1
  br i1 %_24.1, label %panic6, label %bb15

panic5:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_2e9f7c179fe488da1e2d65468d45fea1) #22
  unreachable

bb15:                                             ; preds = %bb14
  store i32 %_24.0, ptr %ten_count, align 4
  br label %bb2

panic6:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d312f324d99896070e2f2d445e56d014) #22
  unreachable

bb9:                                              ; preds = %bb8
  store i32 %_16.0, ptr %five_count, align 4
  br label %bb2

panic7:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_9f56577aae2309b6dcdd66f40fbd453f) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

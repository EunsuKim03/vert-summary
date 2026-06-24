define i32 @f_gold(ptr align 4 %notes.0, i64 %notes.1, i32 %n) unnamed_addr #3 {
start:
  %_8 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %ten_count = alloca [4 x i8], align 4
  %five_count = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  store i32 0, ptr %five_count, align 4
  store i32 0, ptr %ten_count, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcdfe8095cc6c6c20E"(i32 0, i32 %n) #20
  %_5.0 = extractvalue { i32, i32 } %0, 0
  %_5.1 = extractvalue { i32, i32 } %0, 1
  store i32 %_5.0, ptr %iter, align 4
  %1 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_5.1, ptr %1, align 4
  br label %bb2

bb2:                                              ; preds = %bb9, %bb15, %bb21, %bb24, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hc74a3f0461f585f9E"(ptr align 4 %iter) #20
  %3 = extractvalue { i32, i32 } %2, 0
  %4 = extractvalue { i32, i32 } %2, 1
  store i32 %3, ptr %_8, align 4
  %5 = getelementptr inbounds i8, ptr %_8, i64 4
  store i32 %4, ptr %5, align 4
  %6 = load i32, ptr %_8, align 4
  %7 = getelementptr inbounds i8, ptr %_8, i64 4
  %8 = load i32, ptr %7, align 4
  %_10 = zext i32 %6 to i64
  %9 = trunc nuw i64 %_10 to i1
  br i1 %9, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %10 = getelementptr inbounds i8, ptr %_8, i64 4
  %i = load i32, ptr %10, align 4
  %_14 = sext i32 %i to i64
  %_17 = icmp ult i64 %_14, %notes.1
  br i1 %_17, label %bb7, label %panic

bb6:                                              ; preds = %bb2
  store i32 1, ptr %_0, align 4
  br label %bb26

bb26:                                             ; preds = %bb16, %bb25, %bb6
  %11 = load i32, ptr %_0, align 4
  ret i32 %11

bb7:                                              ; preds = %bb5
  %12 = getelementptr inbounds nuw i32, ptr %notes.0, i64 %_14
  %_13 = load i32, ptr %12, align 4
  %_12 = icmp eq i32 %_13, 5
  br i1 %_12, label %bb8, label %bb10

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_14, i64 %notes.1, ptr align 8 @alloc_dfb2db53cc790c2bb335379f8501213a) #22
  unreachable

bb10:                                             ; preds = %bb7
  %_21 = sext i32 %i to i64
  %_24 = icmp ult i64 %_21, %notes.1
  br i1 %_24, label %bb11, label %panic1

bb8:                                              ; preds = %bb7
  %13 = load i32, ptr %five_count, align 4
  %14 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %13, i32 1)
  %_18.0 = extractvalue { i32, i1 } %14, 0
  %_18.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_18.1, label %panic7, label %bb9

bb11:                                             ; preds = %bb10
  %15 = getelementptr inbounds nuw i32, ptr %notes.0, i64 %_21
  %_20 = load i32, ptr %15, align 4
  %_19 = icmp eq i32 %_20, 10
  br i1 %_19, label %bb12, label %bb17

panic1:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_21, i64 %notes.1, ptr align 8 @alloc_5f89d100d32645215de1deac04045dc5) #22
  unreachable

bb17:                                             ; preds = %bb11
  %_30 = load i32, ptr %five_count, align 4
  %_29 = icmp sgt i32 %_30, 0
  br i1 %_29, label %bb18, label %bb22

bb12:                                             ; preds = %bb11
  %_26 = load i32, ptr %five_count, align 4
  %_25 = icmp sgt i32 %_26, 0
  br i1 %_25, label %bb13, label %bb16

bb22:                                             ; preds = %bb18, %bb17
  %_36 = load i32, ptr %five_count, align 4
  %_35 = icmp sge i32 %_36, 3
  br i1 %_35, label %bb23, label %bb25

bb18:                                             ; preds = %bb17
  %_32 = load i32, ptr %ten_count, align 4
  %_31 = icmp sgt i32 %_32, 0
  br i1 %_31, label %bb19, label %bb22

bb19:                                             ; preds = %bb18
  %16 = load i32, ptr %five_count, align 4
  %17 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %16, i32 1)
  %_33.0 = extractvalue { i32, i1 } %17, 0
  %_33.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_33.1, label %panic3, label %bb20

bb25:                                             ; preds = %bb22
  store i32 0, ptr %_0, align 4
  br label %bb26

bb23:                                             ; preds = %bb22
  %18 = load i32, ptr %five_count, align 4
  %19 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %18, i32 3)
  %_37.0 = extractvalue { i32, i1 } %19, 0
  %_37.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_37.1, label %panic2, label %bb24

bb24:                                             ; preds = %bb23
  store i32 %_37.0, ptr %five_count, align 4
  br label %bb2

panic2:                                           ; preds = %bb23
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f11f1eae8a075089e14f776da0130bef) #22
  unreachable

bb20:                                             ; preds = %bb19
  store i32 %_33.0, ptr %five_count, align 4
  %20 = load i32, ptr %ten_count, align 4
  %21 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %20, i32 1)
  %_34.0 = extractvalue { i32, i1 } %21, 0
  %_34.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_34.1, label %panic4, label %bb21

panic3:                                           ; preds = %bb19
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d1b171da2832060ba276060e68e2acd7) #22
  unreachable

bb21:                                             ; preds = %bb20
  store i32 %_34.0, ptr %ten_count, align 4
  br label %bb2

panic4:                                           ; preds = %bb20
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d2fad037768d4a76517a24f0f86f4c01) #22
  unreachable

bb16:                                             ; preds = %bb12
  store i32 0, ptr %_0, align 4
  br label %bb26

bb13:                                             ; preds = %bb12
  %22 = load i32, ptr %five_count, align 4
  %23 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %22, i32 1)
  %_27.0 = extractvalue { i32, i1 } %23, 0
  %_27.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_27.1, label %panic5, label %bb14

bb14:                                             ; preds = %bb13
  store i32 %_27.0, ptr %five_count, align 4
  %24 = load i32, ptr %ten_count, align 4
  %25 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %24, i32 1)
  %_28.0 = extractvalue { i32, i1 } %25, 0
  %_28.1 = extractvalue { i32, i1 } %25, 1
  br i1 %_28.1, label %panic6, label %bb15

panic5:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f27af8c43c0a477ced5bc238de4e6da4) #22
  unreachable

bb15:                                             ; preds = %bb14
  store i32 %_28.0, ptr %ten_count, align 4
  br label %bb2

panic6:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_9e3bc2e7c67f383507230e2649b5fcae) #22
  unreachable

bb9:                                              ; preds = %bb8
  store i32 %_18.0, ptr %five_count, align 4
  br label %bb2

panic7:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a87b298ad0f3a104b5429499eddf5324) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

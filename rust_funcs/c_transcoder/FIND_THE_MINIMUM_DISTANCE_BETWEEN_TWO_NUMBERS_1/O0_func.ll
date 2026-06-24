define i32 @f_gold(i64 %0, i32 %n, i32 %x, i32 %y) unnamed_addr #3 {
start:
  %_26 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_10 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %prev = alloca [4 x i8], align 4
  %min_dist = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  %2 = call i32 @llvm.fptosi.sat.i32.f32(float 0x7FF0000000000000)
  store i32 %2, ptr %min_dist, align 4
  store i32 0, ptr %prev, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %3 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17heb4d6470fec5029cE"(i32 0, i32 %n) #20
  %_7.0 = extractvalue { i32, i32 } %3, 0
  %_7.1 = extractvalue { i32, i32 } %3, 1
  store i32 %_7.0, ptr %iter, align 4
  %4 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_7.1, ptr %4, align 4
  br label %bb2

bb2:                                              ; preds = %bb8, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %5 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h5389eb9f0983ba57E"(ptr align 4 %iter) #20
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = extractvalue { i32, i32 } %5, 1
  store i32 %6, ptr %_10, align 4
  %8 = getelementptr inbounds i8, ptr %_10, i64 4
  store i32 %7, ptr %8, align 4
  %9 = load i32, ptr %_10, align 4
  %10 = getelementptr inbounds i8, ptr %_10, i64 4
  %11 = load i32, ptr %10, align 4
  %_12 = zext i32 %9 to i64
  %12 = trunc nuw i64 %_12 to i1
  br i1 %12, label %bb5, label %bb10

bb5:                                              ; preds = %bb2
  %13 = getelementptr inbounds i8, ptr %_10, i64 4
  %i = load i32, ptr %13, align 4
  %_16 = sext i32 %i to i64
  %_17 = icmp ult i64 %_16, 2
  br i1 %_17, label %bb6, label %panic

bb10:                                             ; preds = %bb9, %bb2
  %_24 = load i32, ptr %prev, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %14 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17heb4d6470fec5029cE"(i32 %_24, i32 %n) #20
  %_22.0 = extractvalue { i32, i32 } %14, 0
  %_22.1 = extractvalue { i32, i32 } %14, 1
  store i32 %_22.0, ptr %iter1, align 4
  %15 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_22.1, ptr %15, align 4
  br label %bb12

bb6:                                              ; preds = %bb5
  %16 = getelementptr inbounds nuw i32, ptr %arr, i64 %_16
  %_15 = load i32, ptr %16, align 4
  %_14 = icmp eq i32 %_15, %x
  br i1 %_14, label %bb9, label %bb7

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_16, i64 2, ptr align 8 @alloc_6bd9b98b3354c7e7a017139149a99527) #22
  unreachable

bb7:                                              ; preds = %bb6
  %_20 = sext i32 %i to i64
  %_21 = icmp ult i64 %_20, 2
  br i1 %_21, label %bb8, label %panic2

bb9:                                              ; preds = %bb8, %bb6
  store i32 %i, ptr %prev, align 4
  br label %bb10

bb8:                                              ; preds = %bb7
  %17 = getelementptr inbounds nuw i32, ptr %arr, i64 %_20
  %_19 = load i32, ptr %17, align 4
  %_18 = icmp eq i32 %_19, %y
  br i1 %_18, label %bb9, label %bb2

panic2:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_20, i64 2, ptr align 8 @alloc_017a97826f43f8015cee3def2bbd1107) #22
  unreachable

bb12:                                             ; preds = %bb25, %bb26, %bb18, %bb10
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %18 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h5389eb9f0983ba57E"(ptr align 4 %iter1) #20
  %19 = extractvalue { i32, i32 } %18, 0
  %20 = extractvalue { i32, i32 } %18, 1
  store i32 %19, ptr %_26, align 4
  %21 = getelementptr inbounds i8, ptr %_26, i64 4
  store i32 %20, ptr %21, align 4
  %22 = load i32, ptr %_26, align 4
  %23 = getelementptr inbounds i8, ptr %_26, i64 4
  %24 = load i32, ptr %23, align 4
  %_28 = zext i32 %22 to i64
  %25 = trunc nuw i64 %_28 to i1
  br i1 %25, label %bb14, label %bb15

bb14:                                             ; preds = %bb12
  %26 = getelementptr inbounds i8, ptr %_26, i64 4
  %i3 = load i32, ptr %26, align 4
  %_32 = sext i32 %i3 to i64
  %_33 = icmp ult i64 %_32, 2
  br i1 %_33, label %bb16, label %panic4

bb15:                                             ; preds = %bb12
  %_0 = load i32, ptr %min_dist, align 4
  ret i32 %_0

bb16:                                             ; preds = %bb14
  %27 = getelementptr inbounds nuw i32, ptr %arr, i64 %_32
  %_31 = load i32, ptr %27, align 4
  %_30 = icmp eq i32 %_31, %x
  br i1 %_30, label %bb19, label %bb17

panic4:                                           ; preds = %bb14
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_32, i64 2, ptr align 8 @alloc_f47b105cf94b8f0c4eaa239db8b9d135) #22
  unreachable

bb17:                                             ; preds = %bb16
  %_36 = sext i32 %i3 to i64
  %_37 = icmp ult i64 %_36, 2
  br i1 %_37, label %bb18, label %panic5

bb19:                                             ; preds = %bb18, %bb16
  %_41 = load i32, ptr %prev, align 4
  %_40 = sext i32 %_41 to i64
  %_42 = icmp ult i64 %_40, 2
  br i1 %_42, label %bb20, label %panic6

bb18:                                             ; preds = %bb17
  %28 = getelementptr inbounds nuw i32, ptr %arr, i64 %_36
  %_35 = load i32, ptr %28, align 4
  %_34 = icmp eq i32 %_35, %y
  br i1 %_34, label %bb19, label %bb12

panic5:                                           ; preds = %bb17
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_36, i64 2, ptr align 8 @alloc_0ab5e0513742298b4016950399811339) #22
  unreachable

bb20:                                             ; preds = %bb19
  %29 = getelementptr inbounds nuw i32, ptr %arr, i64 %_40
  %_39 = load i32, ptr %29, align 4
  %_44 = sext i32 %i3 to i64
  %_45 = icmp ult i64 %_44, 2
  br i1 %_45, label %bb21, label %panic7

panic6:                                           ; preds = %bb19
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_40, i64 2, ptr align 8 @alloc_76a4edd49f197251d13643663da368ab) #22
  unreachable

bb21:                                             ; preds = %bb20
  %30 = getelementptr inbounds nuw i32, ptr %arr, i64 %_44
  %_43 = load i32, ptr %30, align 4
  %_38 = icmp ne i32 %_39, %_43
  br i1 %_38, label %bb22, label %bb26

panic7:                                           ; preds = %bb20
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_44, i64 2, ptr align 8 @alloc_80bb5cf3b673823b1ea36281c0a36b55) #22
  unreachable

bb26:                                             ; preds = %bb23, %bb21
  store i32 %i3, ptr %prev, align 4
  br label %bb12

bb22:                                             ; preds = %bb21
  %_48 = load i32, ptr %prev, align 4
  %31 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i3, i32 %_48)
  %_49.0 = extractvalue { i32, i1 } %31, 0
  %_49.1 = extractvalue { i32, i1 } %31, 1
  br i1 %_49.1, label %panic8, label %bb23

bb23:                                             ; preds = %bb22
  %_50 = load i32, ptr %min_dist, align 4
  %_46 = icmp slt i32 %_49.0, %_50
  br i1 %_46, label %bb24, label %bb26

panic8:                                           ; preds = %bb22
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_25069667dfc26710574a9361b2e2dfdb) #22
  unreachable

bb24:                                             ; preds = %bb23
  %_51 = load i32, ptr %prev, align 4
  %32 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i3, i32 %_51)
  %_52.0 = extractvalue { i32, i1 } %32, 0
  %_52.1 = extractvalue { i32, i1 } %32, 1
  br i1 %_52.1, label %panic9, label %bb25

bb25:                                             ; preds = %bb24
  store i32 %_52.0, ptr %min_dist, align 4
  store i32 %i3, ptr %prev, align 4
  br label %bb12

panic9:                                           ; preds = %bb24
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_edec58882c8ae2068f6bf8afc2f3882e) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

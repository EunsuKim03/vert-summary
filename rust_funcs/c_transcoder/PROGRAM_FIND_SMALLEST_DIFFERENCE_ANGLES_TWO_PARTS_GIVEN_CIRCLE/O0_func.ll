define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_9 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %ans = alloca [4 x i8], align 4
  %sum = alloca [4 x i8], align 4
  %l = alloca [8 x i8], align 8
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store i64 0, ptr %l, align 8
  store i32 0, ptr %sum, align 4
  store i32 360, ptr %ans, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h681141df022603e8E"(i32 0, i32 %n) #21
  %_6.0 = extractvalue { i32, i32 } %2, 0
  %_6.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_6.0, ptr %iter, align 4
  %3 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_6.1, ptr %3, align 4
  br label %bb2

bb2:                                              ; preds = %bb21, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hfab86bf65bf23b83E"(ptr align 4 %iter) #21
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = extractvalue { i32, i32 } %4, 1
  store i32 %5, ptr %_9, align 4
  %7 = getelementptr inbounds i8, ptr %_9, i64 4
  store i32 %6, ptr %7, align 4
  %8 = load i32, ptr %_9, align 4
  %9 = getelementptr inbounds i8, ptr %_9, i64 4
  %10 = load i32, ptr %9, align 4
  %_11 = zext i32 %8 to i64
  %11 = trunc nuw i64 %_11 to i1
  br i1 %11, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %12 = getelementptr inbounds i8, ptr %_9, i64 4
  %i = load i32, ptr %12, align 4
  %_14 = sext i32 %i to i64
  %_15 = icmp ult i64 %_14, 2
  br i1 %_15, label %bb7, label %panic

bb6:                                              ; preds = %bb2
  %_0 = load i32, ptr %ans, align 4
  ret i32 %_0

bb7:                                              ; preds = %bb5
  %13 = getelementptr inbounds nuw i32, ptr %arr, i64 %_14
  %_13 = load i32, ptr %13, align 4
  %14 = load i32, ptr %sum, align 4
  %15 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %14, i32 %_13)
  %_16.0 = extractvalue { i32, i1 } %15, 0
  %_16.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_16.1, label %panic1, label %bb8

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_14, i64 2, ptr align 8 @alloc_9102ad4e2ddcccc41523ce06867f21d3) #20
  unreachable

bb8:                                              ; preds = %bb7
  store i32 %_16.0, ptr %sum, align 4
  br label %bb9

panic1:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c9cebc704368b2824f7d6e077ae67e0b) #20
  unreachable

bb9:                                              ; preds = %bb17, %bb8
  %_18 = load i32, ptr %sum, align 4
  %_17 = icmp sge i32 %_18, 180
  br i1 %_17, label %bb10, label %bb18

bb18:                                             ; preds = %bb9
  %_33 = load i32, ptr %ans, align 4
  %_37 = load i32, ptr %sum, align 4
  %16 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 180, i32 %_37)
  %_38.0 = extractvalue { i32, i1 } %16, 0
  %_38.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_38.1, label %panic2, label %bb19

bb10:                                             ; preds = %bb9
  %_20 = load i32, ptr %ans, align 4
  %_24 = load i32, ptr %sum, align 4
  %17 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 180, i32 %_24)
  %_25.0 = extractvalue { i32, i1 } %17, 0
  %_25.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_25.1, label %panic4, label %bb11

bb19:                                             ; preds = %bb18
; call core::num::<impl i32>::abs
  %_35 = call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17hd228ea19b8c3421fE"(i32 %_38.0) #21
  %18 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %_35)
  %_39.0 = extractvalue { i32, i1 } %18, 0
  %_39.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_39.1, label %panic3, label %bb21

panic2:                                           ; preds = %bb18
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_4f2fd4b75ff6aa37ec0cdfefad5cb56e) #20
  unreachable

bb21:                                             ; preds = %bb19
; call core::cmp::Ord::min
  %_32 = call i32 @_ZN4core3cmp3Ord3min17h00a74ce95037a254E(i32 %_33, i32 %_39.0) #21
  store i32 %_32, ptr %ans, align 4
  br label %bb2

panic3:                                           ; preds = %bb19
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_f862789198ae94dc0f4002f44224079f) #20
  unreachable

bb11:                                             ; preds = %bb10
; call core::num::<impl i32>::abs
  %_22 = call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17hd228ea19b8c3421fE"(i32 %_25.0) #21
  %19 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %_22)
  %_26.0 = extractvalue { i32, i1 } %19, 0
  %_26.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_26.1, label %panic5, label %bb13

panic4:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_71a16cbf6d8dee0d1ddc516aa62079c3) #20
  unreachable

bb13:                                             ; preds = %bb11
; call core::cmp::Ord::min
  %_19 = call i32 @_ZN4core3cmp3Ord3min17h00a74ce95037a254E(i32 %_20, i32 %_26.0) #21
  store i32 %_19, ptr %ans, align 4
  %_28 = load i64, ptr %l, align 8
  %_29 = icmp ult i64 %_28, 2
  br i1 %_29, label %bb15, label %panic6

panic5:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_67af66b8e070c99fb2870f2ae56389e1) #20
  unreachable

bb15:                                             ; preds = %bb13
  %20 = getelementptr inbounds nuw i32, ptr %arr, i64 %_28
  %_27 = load i32, ptr %20, align 4
  %21 = load i32, ptr %sum, align 4
  %22 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %21, i32 %_27)
  %_30.0 = extractvalue { i32, i1 } %22, 0
  %_30.1 = extractvalue { i32, i1 } %22, 1
  br i1 %_30.1, label %panic7, label %bb16

panic6:                                           ; preds = %bb13
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_28, i64 2, ptr align 8 @alloc_053dcd8a6fd7a249eb4c2ce4acfda30d) #20
  unreachable

bb16:                                             ; preds = %bb15
  store i32 %_30.0, ptr %sum, align 4
  %23 = load i64, ptr %l, align 8
  %_31.0 = add i64 %23, 1
  %_31.1 = icmp ult i64 %_31.0, %23
  br i1 %_31.1, label %panic8, label %bb17

panic7:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_20a28adf4cf6dd606e73edb818b6341f) #20
  unreachable

bb17:                                             ; preds = %bb16
  store i64 %_31.0, ptr %l, align 8
  br label %bb9

panic8:                                           ; preds = %bb16
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ca37d6ffe7bd73c1b0dfb985ca238ea5) #20
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

define i32 @f_gold(ptr align 4 %arr, i32 %n) unnamed_addr #3 {
start:
  %_10 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %ans = alloca [4 x i8], align 4
  %prev_max = alloca [4 x i8], align 4
  %minval = alloca [4 x i8], align 4
  %maxval = alloca [4 x i8], align 4
  store i32 1, ptr %maxval, align 4
  store i32 1, ptr %minval, align 4
  store i32 0, ptr %prev_max, align 4
  store i32 -2147483648, ptr %ans, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2d5733100ef7fe77E"(i32 0, i32 %n) #20
  %_7.0 = extractvalue { i32, i32 } %0, 0
  %_7.1 = extractvalue { i32, i32 } %0, 1
  store i32 %_7.0, ptr %iter, align 4
  %1 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_7.1, ptr %1, align 4
  br label %bb2

bb2:                                              ; preds = %bb24, %bb22, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h90591b2dc414c21bE"(ptr align 4 %iter) #20
  %3 = extractvalue { i32, i32 } %2, 0
  %4 = extractvalue { i32, i32 } %2, 1
  store i32 %3, ptr %_10, align 4
  %5 = getelementptr inbounds i8, ptr %_10, i64 4
  store i32 %4, ptr %5, align 4
  %6 = load i32, ptr %_10, align 4
  %7 = getelementptr inbounds i8, ptr %_10, i64 4
  %8 = load i32, ptr %7, align 4
  %_12 = zext i32 %6 to i64
  %9 = trunc nuw i64 %_12 to i1
  br i1 %9, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %10 = getelementptr inbounds i8, ptr %_10, i64 4
  %i = load i32, ptr %10, align 4
  %_16 = sext i32 %i to i64
  %_17 = icmp ult i64 %_16, 10000
  br i1 %_17, label %bb7, label %panic

bb6:                                              ; preds = %bb2
  %_0 = load i32, ptr %ans, align 4
  ret i32 %_0

bb7:                                              ; preds = %bb5
  %11 = getelementptr inbounds nuw i32, ptr %arr, i64 %_16
  %_15 = load i32, ptr %11, align 4
  %_14 = icmp sgt i32 %_15, 0
  br i1 %_14, label %bb8, label %bb14

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_16, i64 10000, ptr align 8 @alloc_602245a8c0c4b065880903093fc7db90) #22
  unreachable

bb14:                                             ; preds = %bb7
  %_31 = sext i32 %i to i64
  %_32 = icmp ult i64 %_31, 10000
  br i1 %_32, label %bb15, label %panic1

bb8:                                              ; preds = %bb7
  %_19 = sext i32 %i to i64
  %_20 = icmp ult i64 %_19, 10000
  br i1 %_20, label %bb9, label %panic6

bb15:                                             ; preds = %bb14
  %12 = getelementptr inbounds nuw i32, ptr %arr, i64 %_31
  %_30 = load i32, ptr %12, align 4
  %_29 = icmp eq i32 %_30, 0
  br i1 %_29, label %bb16, label %bb17

panic1:                                           ; preds = %bb14
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_31, i64 10000, ptr align 8 @alloc_697334abf96f43ed28140b7873ca18bb) #22
  unreachable

bb17:                                             ; preds = %bb15
  %_33 = load i32, ptr %maxval, align 4
  store i32 %_33, ptr %prev_max, align 4
  %_34 = load i32, ptr %minval, align 4
  %_36 = sext i32 %i to i64
  %_37 = icmp ult i64 %_36, 10000
  br i1 %_37, label %bb18, label %panic2

bb16:                                             ; preds = %bb15
  store i32 1, ptr %minval, align 4
  store i32 0, ptr %maxval, align 4
  br label %bb22

bb18:                                             ; preds = %bb17
  %13 = getelementptr inbounds nuw i32, ptr %arr, i64 %_36
  %_35 = load i32, ptr %13, align 4
  %14 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_34, i32 %_35)
  %_38.0 = extractvalue { i32, i1 } %14, 0
  %_38.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_38.1, label %panic3, label %bb19

panic2:                                           ; preds = %bb17
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_36, i64 10000, ptr align 8 @alloc_b8c2a5462c5aeecce510534d6ca25007) #22
  unreachable

bb19:                                             ; preds = %bb18
  store i32 %_38.0, ptr %maxval, align 4
  %_39 = load i32, ptr %prev_max, align 4
  %_41 = sext i32 %i to i64
  %_42 = icmp ult i64 %_41, 10000
  br i1 %_42, label %bb20, label %panic4

panic3:                                           ; preds = %bb18
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_41aca87e3c68503e4cc49300d3240674) #22
  unreachable

bb20:                                             ; preds = %bb19
  %15 = getelementptr inbounds nuw i32, ptr %arr, i64 %_41
  %_40 = load i32, ptr %15, align 4
  %16 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_39, i32 %_40)
  %_43.0 = extractvalue { i32, i1 } %16, 0
  %_43.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_43.1, label %panic5, label %bb21

panic4:                                           ; preds = %bb19
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_41, i64 10000, ptr align 8 @alloc_c3cec7688398e27a0b995bbd066dd75e) #22
  unreachable

bb21:                                             ; preds = %bb20
  store i32 %_43.0, ptr %minval, align 4
  br label %bb22

panic5:                                           ; preds = %bb20
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_7e07765f335212da274a524216b9720d) #22
  unreachable

bb22:                                             ; preds = %bb12, %bb16, %bb21
  %_45 = load i32, ptr %ans, align 4
  %_46 = load i32, ptr %maxval, align 4
; call core::cmp::max
  %_44 = call i32 @_ZN4core3cmp3max17h832211d7f08e8817E(i32 %_45, i32 %_46) #20
  store i32 %_44, ptr %ans, align 4
  %_48 = load i32, ptr %maxval, align 4
  %_47 = icmp sle i32 %_48, 0
  br i1 %_47, label %bb24, label %bb2

bb9:                                              ; preds = %bb8
  %17 = getelementptr inbounds nuw i32, ptr %arr, i64 %_19
  %_18 = load i32, ptr %17, align 4
  %18 = load i32, ptr %maxval, align 4
  %19 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %18, i32 %_18)
  %_21.0 = extractvalue { i32, i1 } %19, 0
  %_21.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_21.1, label %panic7, label %bb10

panic6:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_19, i64 10000, ptr align 8 @alloc_c7ed552378d0d22a96310757de095ece) #22
  unreachable

bb10:                                             ; preds = %bb9
  store i32 %_21.0, ptr %maxval, align 4
  %_24 = load i32, ptr %minval, align 4
  %_26 = sext i32 %i to i64
  %_27 = icmp ult i64 %_26, 10000
  br i1 %_27, label %bb11, label %panic8

panic7:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_c2ff5d03273df5afc48b0ba306e79e39) #22
  unreachable

bb11:                                             ; preds = %bb10
  %20 = getelementptr inbounds nuw i32, ptr %arr, i64 %_26
  %_25 = load i32, ptr %20, align 4
  %21 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_24, i32 %_25)
  %_28.0 = extractvalue { i32, i1 } %21, 0
  %_28.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_28.1, label %panic9, label %bb12

panic8:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_26, i64 10000, ptr align 8 @alloc_b931c3ded2eef71ca487fac7c1ff020b) #22
  unreachable

bb12:                                             ; preds = %bb11
; call core::cmp::min
  %_22 = call i32 @_ZN4core3cmp3min17h9937b8d8559a021dE(i32 1, i32 %_28.0) #20
  store i32 %_22, ptr %minval, align 4
  br label %bb22

panic9:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_c451563a0cc9e124260b5175b2511b6b) #22
  unreachable

bb24:                                             ; preds = %bb22
  store i32 1, ptr %maxval, align 4
  br label %bb2

bb4:                                              ; No predecessors!
  unreachable
}

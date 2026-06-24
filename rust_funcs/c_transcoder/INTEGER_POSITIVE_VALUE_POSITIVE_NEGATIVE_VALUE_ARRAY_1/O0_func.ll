define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_9 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %sum = alloca [4 x i8], align 4
  %pos = alloca [4 x i8], align 4
  %neg = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store i32 0, ptr %neg, align 4
  store i32 0, ptr %pos, align 4
  store i32 0, ptr %sum, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd9b6c1313af3f7dcE"(i32 0, i32 %n) #21
  %_6.0 = extractvalue { i32, i32 } %2, 0
  %_6.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_6.0, ptr %iter, align 4
  %3 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_6.1, ptr %3, align 4
  br label %bb2

bb2:                                              ; preds = %bb11, %bb13, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hf661917e58eae66fE"(ptr align 4 %iter) #21
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
  br i1 %_15, label %bb7, label %panic3

bb6:                                              ; preds = %bb2
  %_23 = load i32, ptr %sum, align 4
  %_26 = load i32, ptr %neg, align 4
  %_27 = load i32, ptr %pos, align 4
  %13 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_26, i32 %_27)
  %_28.0 = extractvalue { i32, i1 } %13, 0
  %_28.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_28.1, label %panic, label %bb14

bb14:                                             ; preds = %bb6
; call core::num::<impl i32>::abs
  %_24 = call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17h17aeb7086c53fff6E"(i32 %_28.0) #21
  %_29 = icmp eq i32 %_24, 0
  br i1 %_29, label %panic1, label %bb16

panic:                                            ; preds = %bb6
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_9b0829f1624921798e5c7b67c00cfd5b) #20
  unreachable

bb16:                                             ; preds = %bb14
  %_30 = icmp eq i32 %_24, -1
  %_31 = icmp eq i32 %_23, -2147483648
  %_32 = and i1 %_30, %_31
  br i1 %_32, label %panic2, label %bb17

panic1:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_fe03d31975c7d6b26712521389dad315) #20
  unreachable

bb17:                                             ; preds = %bb16
  %_0 = sdiv i32 %_23, %_24
  ret i32 %_0

panic2:                                           ; preds = %bb16
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_fe03d31975c7d6b26712521389dad315) #20
  unreachable

bb7:                                              ; preds = %bb5
  %14 = getelementptr inbounds nuw i32, ptr %arr, i64 %_14
  %_13 = load i32, ptr %14, align 4
  %15 = load i32, ptr %sum, align 4
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %15, i32 %_13)
  %_16.0 = extractvalue { i32, i1 } %16, 0
  %_16.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_16.1, label %panic4, label %bb8

panic3:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_14, i64 2, ptr align 8 @alloc_53a2ba48819dc86d4d40b3f349adc062) #20
  unreachable

bb8:                                              ; preds = %bb7
  store i32 %_16.0, ptr %sum, align 4
  %_19 = sext i32 %i to i64
  %_20 = icmp ult i64 %_19, 2
  br i1 %_20, label %bb9, label %panic5

panic4:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_461fba86fdf0ebc08e83fcb6cbce0245) #20
  unreachable

bb9:                                              ; preds = %bb8
  %17 = getelementptr inbounds nuw i32, ptr %arr, i64 %_19
  %_18 = load i32, ptr %17, align 4
  %_17 = icmp slt i32 %_18, 0
  br i1 %_17, label %bb10, label %bb12

panic5:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_19, i64 2, ptr align 8 @alloc_84f07ea1a30f14f91fda38703e1884b6) #20
  unreachable

bb12:                                             ; preds = %bb9
  %18 = load i32, ptr %pos, align 4
  %19 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %18, i32 1)
  %_22.0 = extractvalue { i32, i1 } %19, 0
  %_22.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_22.1, label %panic6, label %bb13

bb10:                                             ; preds = %bb9
  %20 = load i32, ptr %neg, align 4
  %21 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %20, i32 1)
  %_21.0 = extractvalue { i32, i1 } %21, 0
  %_21.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_21.1, label %panic7, label %bb11

bb13:                                             ; preds = %bb12
  store i32 %_22.0, ptr %pos, align 4
  br label %bb2

panic6:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e6f92a1356dac9b834cff92227600411) #20
  unreachable

bb11:                                             ; preds = %bb10
  store i32 %_21.0, ptr %neg, align 4
  br label %bb2

panic7:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_9ca8160d45466a8a854a0b3b0d1f4535) #20
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

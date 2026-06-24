define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_8 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %count_even = alloca [4 x i8], align 4
  %count_odd = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %a = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 8 %1, i64 8, i1 false)
  store i32 0, ptr %count_odd, align 4
  store i32 0, ptr %count_even, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc915dde690719f43E"(i32 0, i32 %n) #20
  %_5.0 = extractvalue { i32, i32 } %2, 0
  %_5.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_5.0, ptr %iter, align 4
  %3 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_5.1, ptr %3, align 4
  br label %bb2

bb2:                                              ; preds = %bb9, %bb11, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h8e0f8f1f7441bb2fE"(ptr align 4 %iter) #20
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
  %_15 = sext i32 %i to i64
  %_16 = icmp ult i64 %_15, 2
  br i1 %_16, label %bb7, label %panic2

bb6:                                              ; preds = %bb2
  %_21 = load i32, ptr %count_odd, align 4
  %_24 = icmp eq i32 %_21, -2147483648
  %_25 = and i1 false, %_24
  br i1 %_25, label %panic, label %bb13

bb13:                                             ; preds = %bb6
  %_20 = srem i32 %_21, 2
  %_19 = icmp eq i32 %_20, 1
  br i1 %_19, label %bb14, label %bb18

panic:                                            ; preds = %bb6
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_b52910a25ed2a2c15434a60c8ecb33a8) #22
  unreachable

bb18:                                             ; preds = %bb16, %bb13
  store i32 1, ptr %_0, align 4
  br label %bb19

bb14:                                             ; preds = %bb13
  %_28 = load i32, ptr %count_even, align 4
  %_31 = icmp eq i32 %_28, -2147483648
  %_32 = and i1 false, %_31
  br i1 %_32, label %panic1, label %bb16

bb16:                                             ; preds = %bb14
  %_27 = srem i32 %_28, 2
  %_26 = icmp eq i32 %_27, 1
  br i1 %_26, label %bb17, label %bb18

panic1:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_69b10f96a5244cdb6741bc5eac05cbff) #22
  unreachable

bb17:                                             ; preds = %bb16
  store i32 0, ptr %_0, align 4
  br label %bb19

bb19:                                             ; preds = %bb17, %bb18
  %13 = load i32, ptr %_0, align 4
  ret i32 %13

bb7:                                              ; preds = %bb5
  %14 = getelementptr inbounds nuw i32, ptr %a, i64 %_15
  %_14 = load i32, ptr %14, align 4
  %_13 = and i32 %_14, 1
  %_12 = icmp eq i32 %_13, 1
  br i1 %_12, label %bb8, label %bb10

panic2:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_15, i64 2, ptr align 8 @alloc_fdc1f7c0cc7e34a9ee9440810172a4d9) #22
  unreachable

bb10:                                             ; preds = %bb7
  %15 = load i32, ptr %count_even, align 4
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %15, i32 1)
  %_18.0 = extractvalue { i32, i1 } %16, 0
  %_18.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_18.1, label %panic3, label %bb11

bb8:                                              ; preds = %bb7
  %17 = load i32, ptr %count_odd, align 4
  %18 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %17, i32 1)
  %_17.0 = extractvalue { i32, i1 } %18, 0
  %_17.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_17.1, label %panic4, label %bb9

bb11:                                             ; preds = %bb10
  store i32 %_18.0, ptr %count_even, align 4
  br label %bb2

panic3:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_3b730d0716861855e45b5ba21e724ab2) #22
  unreachable

bb9:                                              ; preds = %bb8
  store i32 %_17.0, ptr %count_odd, align 4
  br label %bb2

panic4:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_5b01221cf63d8ba67694f708783562c2) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_15 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %curr_sum = alloca [4 x i8], align 4
  %_7 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %res = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store i32 -2147483648, ptr %res, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h429e9b98f5134c9eE"(i32 0, i32 %n) #20
  %_4.0 = extractvalue { i32, i32 } %2, 0
  %_4.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_4.0, ptr %iter, align 4
  %3 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_4.1, ptr %3, align 4
  br label %bb2

bb2:                                              ; preds = %bb11, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h9ff8b7b17b68f515E"(ptr align 4 %iter) #20
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = extractvalue { i32, i32 } %4, 1
  store i32 %5, ptr %_7, align 4
  %7 = getelementptr inbounds i8, ptr %_7, i64 4
  store i32 %6, ptr %7, align 4
  %8 = load i32, ptr %_7, align 4
  %9 = getelementptr inbounds i8, ptr %_7, i64 4
  %10 = load i32, ptr %9, align 4
  %_9 = zext i32 %8 to i64
  %11 = trunc nuw i64 %_9 to i1
  br i1 %11, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %12 = getelementptr inbounds i8, ptr %_7, i64 4
  %i = load i32, ptr %12, align 4
  store i32 0, ptr %curr_sum, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %13 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h429e9b98f5134c9eE"(i32 0, i32 %n) #20
  %_12.0 = extractvalue { i32, i32 } %13, 0
  %_12.1 = extractvalue { i32, i32 } %13, 1
  store i32 %_12.0, ptr %iter1, align 4
  %14 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_12.1, ptr %14, align 4
  br label %bb8

bb6:                                              ; preds = %bb2
  %_0 = load i32, ptr %res, align 4
  ret i32 %_0

bb8:                                              ; preds = %bb17, %bb5
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %15 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h9ff8b7b17b68f515E"(ptr align 4 %iter1) #20
  %16 = extractvalue { i32, i32 } %15, 0
  %17 = extractvalue { i32, i32 } %15, 1
  store i32 %16, ptr %_15, align 4
  %18 = getelementptr inbounds i8, ptr %_15, i64 4
  store i32 %17, ptr %18, align 4
  %19 = load i32, ptr %_15, align 4
  %20 = getelementptr inbounds i8, ptr %_15, i64 4
  %21 = load i32, ptr %20, align 4
  %_17 = zext i32 %19 to i64
  %22 = trunc nuw i64 %_17 to i1
  br i1 %22, label %bb10, label %bb11

bb10:                                             ; preds = %bb8
  %23 = getelementptr inbounds i8, ptr %_15, i64 4
  %j = load i32, ptr %23, align 4
  %24 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 %j)
  %_21.0 = extractvalue { i32, i1 } %24, 0
  %_21.1 = extractvalue { i32, i1 } %24, 1
  br i1 %_21.1, label %panic, label %bb12

bb11:                                             ; preds = %bb8
  %_33 = load i32, ptr %res, align 4
  %_34 = load i32, ptr %curr_sum, align 4
; call core::cmp::Ord::max
  %_32 = call i32 @_ZN4core3cmp3Ord3max17he1943819149145ccE(i32 %_33, i32 %_34) #20
  store i32 %_32, ptr %res, align 4
  br label %bb2

bb12:                                             ; preds = %bb10
  %_22 = icmp eq i32 %n, 0
  br i1 %_22, label %panic2, label %bb13

panic:                                            ; preds = %bb10
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_5869e0b58fae408989c328ff07fd14af) #22
  unreachable

bb13:                                             ; preds = %bb12
  %_23 = icmp eq i32 %n, -1
  %_24 = icmp eq i32 %_21.0, -2147483648
  %_25 = and i1 %_23, %_24
  br i1 %_25, label %panic3, label %bb14

panic2:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_5869e0b58fae408989c328ff07fd14af) #22
  unreachable

bb14:                                             ; preds = %bb13
  %index = srem i32 %_21.0, %n
  %_28 = sext i32 %index to i64
  %_29 = icmp ult i64 %_28, 2
  br i1 %_29, label %bb15, label %panic4

panic3:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_5869e0b58fae408989c328ff07fd14af) #22
  unreachable

bb15:                                             ; preds = %bb14
  %25 = getelementptr inbounds nuw i32, ptr %arr, i64 %_28
  %_27 = load i32, ptr %25, align 4
  %26 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %j, i32 %_27)
  %_30.0 = extractvalue { i32, i1 } %26, 0
  %_30.1 = extractvalue { i32, i1 } %26, 1
  br i1 %_30.1, label %panic5, label %bb16

panic4:                                           ; preds = %bb14
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_28, i64 2, ptr align 8 @alloc_fc22464ebf2dd82d3f5e4a5725850908) #22
  unreachable

bb16:                                             ; preds = %bb15
  %27 = load i32, ptr %curr_sum, align 4
  %28 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %27, i32 %_30.0)
  %_31.0 = extractvalue { i32, i1 } %28, 0
  %_31.1 = extractvalue { i32, i1 } %28, 1
  br i1 %_31.1, label %panic6, label %bb17

panic5:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_fe042f45687b0d17fd2694d3c4b202e4) #22
  unreachable

bb17:                                             ; preds = %bb16
  store i32 %_31.0, ptr %curr_sum, align 4
  br label %bb8

panic6:                                           ; preds = %bb16
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a3cbf41bfead1a9286ed63cf2f739d52) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

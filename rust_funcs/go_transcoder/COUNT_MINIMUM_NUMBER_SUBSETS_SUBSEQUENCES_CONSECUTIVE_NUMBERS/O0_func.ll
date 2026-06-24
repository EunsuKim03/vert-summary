define i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %n) unnamed_addr #3 {
start:
  %_10 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %count = alloca [4 x i8], align 4
; call alloc::slice::<impl [T]>::sort_by
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hd4bb790fdc40cec5E"(ptr align 4 %arr.0, i64 %arr.1) #20
  store i32 1, ptr %count, align 4
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_8.0 = extractvalue { i32, i1 } %0, 0
  %_8.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_8.1, label %panic, label %bb2

bb2:                                              ; preds = %start
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %1 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd802f02fd7bf8a99E"(i32 0, i32 %_8.0) #20
  %_5.0 = extractvalue { i32, i32 } %1, 0
  %_5.1 = extractvalue { i32, i32 } %1, 1
  store i32 %_5.0, ptr %iter, align 4
  %2 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_5.1, ptr %2, align 4
  br label %bb4

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_6f02cfd8fedb3efcf12766f87b6bd6a2) #22
  unreachable

bb4:                                              ; preds = %bb14, %bb12, %bb2
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %3 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h31aeb1cf045385daE"(ptr align 4 %iter) #20
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = extractvalue { i32, i32 } %3, 1
  store i32 %4, ptr %_10, align 4
  %6 = getelementptr inbounds i8, ptr %_10, i64 4
  store i32 %5, ptr %6, align 4
  %7 = load i32, ptr %_10, align 4
  %8 = getelementptr inbounds i8, ptr %_10, i64 4
  %9 = load i32, ptr %8, align 4
  %_12 = zext i32 %7 to i64
  %10 = trunc nuw i64 %_12 to i1
  br i1 %10, label %bb7, label %bb8

bb7:                                              ; preds = %bb4
  %11 = getelementptr inbounds i8, ptr %_10, i64 4
  %i = load i32, ptr %11, align 4
  %_17 = sext i32 %i to i64
  %_20 = icmp ult i64 %_17, %arr.1
  br i1 %_20, label %bb9, label %panic1

bb8:                                              ; preds = %bb4
  %_0 = load i32, ptr %count, align 4
  ret i32 %_0

bb9:                                              ; preds = %bb7
  %12 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_17
  %_16 = load i32, ptr %12, align 4
  %13 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_16, i32 1)
  %_21.0 = extractvalue { i32, i1 } %13, 0
  %_21.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_21.1, label %panic2, label %bb10

panic1:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_17, i64 %arr.1, ptr align 8 @alloc_4e695acd3a9b051d3412bc846c6796f9) #22
  unreachable

bb10:                                             ; preds = %bb9
  %_24 = sext i32 %i to i64
  %_25.0 = add i64 %_24, 1
  %_25.1 = icmp ult i64 %_25.0, %_24
  br i1 %_25.1, label %panic3, label %bb11

panic2:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4e695acd3a9b051d3412bc846c6796f9) #22
  unreachable

bb11:                                             ; preds = %bb10
  %_28 = icmp ult i64 %_25.0, %arr.1
  br i1 %_28, label %bb12, label %panic4

panic3:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e22328919f73408744d1a5ccd8680313) #22
  unreachable

bb12:                                             ; preds = %bb11
  %14 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_25.0
  %_22 = load i32, ptr %14, align 4
  %_14 = icmp ne i32 %_21.0, %_22
  br i1 %_14, label %bb13, label %bb4

panic4:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_25.0, i64 %arr.1, ptr align 8 @alloc_d7a3b9ca1da7de4904059ec177864531) #22
  unreachable

bb13:                                             ; preds = %bb12
  %15 = load i32, ptr %count, align 4
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %15, i32 1)
  %_29.0 = extractvalue { i32, i1 } %16, 0
  %_29.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_29.1, label %panic5, label %bb14

bb14:                                             ; preds = %bb13
  store i32 %_29.0, ptr %count, align 4
  br label %bb4

panic5:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_91dec7cc98963ecfd613d5a6a56b95bd) #22
  unreachable

bb6:                                              ; No predecessors!
  unreachable
}

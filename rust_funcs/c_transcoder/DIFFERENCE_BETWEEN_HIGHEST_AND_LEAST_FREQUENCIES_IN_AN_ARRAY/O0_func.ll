define i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %n) unnamed_addr #3 {
start:
  %_12 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %min_count = alloca [4 x i8], align 4
  %max_count = alloca [4 x i8], align 4
  %count = alloca [4 x i8], align 4
; call alloc::slice::<impl [T]>::sort
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h7327b6c54e18ca98E"(ptr align 4 %arr.0, i64 %arr.1) #20
  store i32 0, ptr %count, align 4
  store i32 0, ptr %max_count, align 4
  store i32 %n, ptr %min_count, align 4
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_10.0 = extractvalue { i32, i1 } %0, 0
  %_10.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_10.1, label %panic, label %bb2

bb2:                                              ; preds = %start
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %1 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h48234ebfadcba82cE"(i32 0, i32 %_10.0) #20
  %_7.0 = extractvalue { i32, i32 } %1, 0
  %_7.1 = extractvalue { i32, i32 } %1, 1
  store i32 %_7.0, ptr %iter, align 4
  %2 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_7.1, ptr %2, align 4
  br label %bb4

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_e8b739572c57baba01fbc275ff2f36b8) #22
  unreachable

bb4:                                              ; preds = %bb13, %bb14, %bb2
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %3 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h0af7d70d0444feecE"(ptr align 4 %iter) #20
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = extractvalue { i32, i32 } %3, 1
  store i32 %4, ptr %_12, align 4
  %6 = getelementptr inbounds i8, ptr %_12, i64 4
  store i32 %5, ptr %6, align 4
  %7 = load i32, ptr %_12, align 4
  %8 = getelementptr inbounds i8, ptr %_12, i64 4
  %9 = load i32, ptr %8, align 4
  %_14 = zext i32 %7 to i64
  %10 = trunc nuw i64 %_14 to i1
  br i1 %10, label %bb7, label %bb8

bb7:                                              ; preds = %bb4
  %11 = getelementptr inbounds i8, ptr %_12, i64 4
  %i = load i32, ptr %11, align 4
  %_18 = sext i32 %i to i64
  %_21 = icmp ult i64 %_18, %arr.1
  br i1 %_21, label %bb9, label %panic2

bb8:                                              ; preds = %bb4
  %_36 = load i32, ptr %max_count, align 4
  %_37 = load i32, ptr %min_count, align 4
  %12 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_36, i32 %_37)
  %_38.0 = extractvalue { i32, i1 } %12, 0
  %_38.1 = extractvalue { i32, i1 } %12, 1
  br i1 %_38.1, label %panic1, label %bb17

bb17:                                             ; preds = %bb8
  ret i32 %_38.0

panic1:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_9f65a7062cba03248a0a1dcaaae02b07) #22
  unreachable

bb9:                                              ; preds = %bb7
  %13 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_18
  %_17 = load i32, ptr %13, align 4
  %14 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 1)
  %_25.0 = extractvalue { i32, i1 } %14, 0
  %_25.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_25.1, label %panic3, label %bb10

panic2:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_18, i64 %arr.1, ptr align 8 @alloc_c1e3c373ecc68317544b1a7cfe9a6257) #22
  unreachable

bb10:                                             ; preds = %bb9
  %_23 = sext i32 %_25.0 to i64
  %_28 = icmp ult i64 %_23, %arr.1
  br i1 %_28, label %bb11, label %panic4

panic3:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2983863a409451b15ad0fbddaee89471) #22
  unreachable

bb11:                                             ; preds = %bb10
  %15 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_23
  %_22 = load i32, ptr %15, align 4
  %_16 = icmp eq i32 %_17, %_22
  br i1 %_16, label %bb12, label %bb14

panic4:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_23, i64 %arr.1, ptr align 8 @alloc_37d90b1dabdcb0d21999807ecd4d9a4e) #22
  unreachable

bb14:                                             ; preds = %bb11
  %_31 = load i32, ptr %max_count, align 4
  %_32 = load i32, ptr %count, align 4
; call core::cmp::max
  %_30 = call i32 @_ZN4core3cmp3max17h267e968c3c33926eE(i32 %_31, i32 %_32) #20
  store i32 %_30, ptr %max_count, align 4
  %_34 = load i32, ptr %min_count, align 4
  %_35 = load i32, ptr %count, align 4
; call core::cmp::min
  %_33 = call i32 @_ZN4core3cmp3min17h51ef865691e222bcE(i32 %_34, i32 %_35) #20
  store i32 %_33, ptr %min_count, align 4
  store i32 0, ptr %count, align 4
  br label %bb4

bb12:                                             ; preds = %bb11
  %16 = load i32, ptr %count, align 4
  %17 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %16, i32 1)
  %_29.0 = extractvalue { i32, i1 } %17, 0
  %_29.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_29.1, label %panic5, label %bb13

bb13:                                             ; preds = %bb12
  store i32 %_29.0, ptr %count, align 4
  br label %bb4

panic5:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_bffa560ae2716db720e057d077b36ee8) #22
  unreachable

bb6:                                              ; No predecessors!
  unreachable
}

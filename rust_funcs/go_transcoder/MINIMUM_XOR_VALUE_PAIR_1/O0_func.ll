define i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %n) unnamed_addr #3 {
start:
  %_11 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %val = alloca [4 x i8], align 4
  %min_xor = alloca [4 x i8], align 4
; call alloc::slice::<impl [T]>::sort
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h536142beeaacdee2E"(ptr align 4 %arr.0, i64 %arr.1) #20
  store i32 2147483647, ptr %min_xor, align 4
  store i32 0, ptr %val, align 4
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_9.0 = extractvalue { i32, i1 } %0, 0
  %_9.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_9.1, label %panic, label %bb2

bb2:                                              ; preds = %start
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %1 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he66834d7590d6d87E"(i32 0, i32 %_9.0) #20
  %_6.0 = extractvalue { i32, i32 } %1, 0
  %_6.1 = extractvalue { i32, i32 } %1, 1
  store i32 %_6.0, ptr %iter, align 4
  %2 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_6.1, ptr %2, align 4
  br label %bb4

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_12b29cec0a4d76d2071ed5c786b34d38) #22
  unreachable

bb4:                                              ; preds = %bb11, %bb2
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %3 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h59882d9e1eaf7d4bE"(ptr align 4 %iter) #20
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = extractvalue { i32, i32 } %3, 1
  store i32 %4, ptr %_11, align 4
  %6 = getelementptr inbounds i8, ptr %_11, i64 4
  store i32 %5, ptr %6, align 4
  %7 = load i32, ptr %_11, align 4
  %8 = getelementptr inbounds i8, ptr %_11, i64 4
  %9 = load i32, ptr %8, align 4
  %_13 = zext i32 %7 to i64
  %10 = trunc nuw i64 %_13 to i1
  br i1 %10, label %bb7, label %bb8

bb7:                                              ; preds = %bb4
  %11 = getelementptr inbounds i8, ptr %_11, i64 4
  %i = load i32, ptr %11, align 4
  %_16 = sext i32 %i to i64
  %_19 = icmp ult i64 %_16, %arr.1
  br i1 %_19, label %bb9, label %panic1

bb8:                                              ; preds = %bb4
  %_0 = load i32, ptr %min_xor, align 4
  ret i32 %_0

bb9:                                              ; preds = %bb7
  %12 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_16
  %_15 = load i32, ptr %12, align 4
  %13 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 1)
  %_23.0 = extractvalue { i32, i1 } %13, 0
  %_23.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_23.1, label %panic2, label %bb10

panic1:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_16, i64 %arr.1, ptr align 8 @alloc_9a6719be4c676c52291bed10b3671d10) #22
  unreachable

bb10:                                             ; preds = %bb9
  %_21 = sext i32 %_23.0 to i64
  %_26 = icmp ult i64 %_21, %arr.1
  br i1 %_26, label %bb11, label %panic3

panic2:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4641b54ded926cc93c952bc156cc41ce) #22
  unreachable

bb11:                                             ; preds = %bb10
  %14 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_21
  %_20 = load i32, ptr %14, align 4
  %15 = xor i32 %_15, %_20
  store i32 %15, ptr %val, align 4
  %_28 = load i32, ptr %min_xor, align 4
  %_29 = load i32, ptr %val, align 4
; call core::cmp::min
  %_27 = call i32 @_ZN4core3cmp3min17h7b35c7d4dc4c3f06E(i32 %_28, i32 %_29) #20
  store i32 %_27, ptr %min_xor, align 4
  br label %bb4

panic3:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_21, i64 %arr.1, ptr align 8 @alloc_57220842cee6f384e1ce47574f03de68) #22
  unreachable

bb6:                                              ; No predecessors!
  unreachable
}

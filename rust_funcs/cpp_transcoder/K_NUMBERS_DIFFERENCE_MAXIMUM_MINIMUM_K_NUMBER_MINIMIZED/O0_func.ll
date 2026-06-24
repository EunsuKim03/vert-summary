define i32 @f_gold(i64 %0, i32 %n, i32 %k) unnamed_addr #3 {
start:
  %_15 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %result = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
; call alloc::slice::<impl [T]>::sort
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h6c71145db03979feE"(ptr align 4 %arr, i64 2) #20
  store i32 2147483647, ptr %result, align 4
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 %k)
  %_12.0 = extractvalue { i32, i1 } %2, 0
  %_12.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_12.1, label %panic, label %bb2

bb2:                                              ; preds = %start
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_12.0, i32 1)
  %_13.0 = extractvalue { i32, i1 } %3, 0
  %_13.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_13.1, label %panic1, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f7ebb41505eb7ce6e315b0b25ad978a8) #22
  unreachable

bb3:                                              ; preds = %bb2
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %4 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h63749bc05b601db9E"(i32 0, i32 %_13.0) #20
  %_8.0 = extractvalue { i32, i32 } %4, 0
  %_8.1 = extractvalue { i32, i32 } %4, 1
  store i32 %_8.0, ptr %iter, align 4
  %5 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_8.1, ptr %5, align 4
  br label %bb5

panic1:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f7ebb41505eb7ce6e315b0b25ad978a8) #22
  unreachable

bb5:                                              ; preds = %bb14, %bb3
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %6 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hc74e1c41d6ae9650E"(ptr align 4 %iter) #20
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = extractvalue { i32, i32 } %6, 1
  store i32 %7, ptr %_15, align 4
  %9 = getelementptr inbounds i8, ptr %_15, i64 4
  store i32 %8, ptr %9, align 4
  %10 = load i32, ptr %_15, align 4
  %11 = getelementptr inbounds i8, ptr %_15, i64 4
  %12 = load i32, ptr %11, align 4
  %_17 = zext i32 %10 to i64
  %13 = trunc nuw i64 %_17 to i1
  br i1 %13, label %bb8, label %bb9

bb8:                                              ; preds = %bb5
  %14 = getelementptr inbounds i8, ptr %_15, i64 4
  %i = load i32, ptr %14, align 4
  %_20 = load i32, ptr %result, align 4
  %_25 = sext i32 %i to i64
  %_26 = sext i32 %k to i64
  %_27.0 = add i64 %_25, %_26
  %_27.1 = icmp ult i64 %_27.0, %_25
  br i1 %_27.1, label %panic2, label %bb10

bb9:                                              ; preds = %bb5
  %_0 = load i32, ptr %result, align 4
  ret i32 %_0

bb10:                                             ; preds = %bb8
  %_28.0 = sub i64 %_27.0, 1
  %_28.1 = icmp ult i64 %_27.0, 1
  br i1 %_28.1, label %panic3, label %bb11

panic2:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_5101dd3ff82251fc6c1835e1e340fc59) #22
  unreachable

bb11:                                             ; preds = %bb10
  %_29 = icmp ult i64 %_28.0, 2
  br i1 %_29, label %bb12, label %panic4

panic3:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5101dd3ff82251fc6c1835e1e340fc59) #22
  unreachable

bb12:                                             ; preds = %bb11
  %15 = getelementptr inbounds nuw i32, ptr %arr, i64 %_28.0
  %_22 = load i32, ptr %15, align 4
  %_31 = sext i32 %i to i64
  %_32 = icmp ult i64 %_31, 2
  br i1 %_32, label %bb13, label %panic5

panic4:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_28.0, i64 2, ptr align 8 @alloc_6a688abe449239bb85c294a81cc81a33) #22
  unreachable

bb13:                                             ; preds = %bb12
  %16 = getelementptr inbounds nuw i32, ptr %arr, i64 %_31
  %_30 = load i32, ptr %16, align 4
  %17 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_22, i32 %_30)
  %_33.0 = extractvalue { i32, i1 } %17, 0
  %_33.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_33.1, label %panic6, label %bb14

panic5:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_31, i64 2, ptr align 8 @alloc_bb72ddfdb6d3f59065b922647502bbd1) #22
  unreachable

bb14:                                             ; preds = %bb13
; call core::cmp::min
  %_19 = call i32 @_ZN4core3cmp3min17h02a116f7f0319cdbE(i32 %_20, i32 %_33.0) #20
  store i32 %_19, ptr %result, align 4
  br label %bb5

panic6:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_6a688abe449239bb85c294a81cc81a33) #22
  unreachable

bb7:                                              ; No predecessors!
  unreachable
}

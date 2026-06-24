define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_6 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %prod = alloca [4 x i8], align 4
  store i32 1, ptr %prod, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h284463a5a433cc46E"(i32 2, i32 %n) #20
  %_3.0 = extractvalue { i32, i32 } %0, 0
  %_3.1 = extractvalue { i32, i32 } %0, 1
  store i32 %_3.0, ptr %iter, align 4
  %1 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_3.1, ptr %1, align 4
  br label %bb2

bb2:                                              ; preds = %bb7, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hff61b3a02268ef16E"(ptr align 4 %iter) #20
  %3 = extractvalue { i32, i32 } %2, 0
  %4 = extractvalue { i32, i32 } %2, 1
  store i32 %3, ptr %_6, align 4
  %5 = getelementptr inbounds i8, ptr %_6, i64 4
  store i32 %4, ptr %5, align 4
  %6 = load i32, ptr %_6, align 4
  %7 = getelementptr inbounds i8, ptr %_6, i64 4
  %8 = load i32, ptr %7, align 4
  %_8 = zext i32 %6 to i64
  %9 = trunc nuw i64 %_8 to i1
  br i1 %9, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %10 = getelementptr inbounds i8, ptr %_6, i64 4
  %i = load i32, ptr %10, align 4
  %11 = load i32, ptr %prod, align 4
  %12 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %11, i32 %i)
  %_10.0 = extractvalue { i32, i1 } %12, 0
  %_10.1 = extractvalue { i32, i1 } %12, 1
  br i1 %_10.1, label %panic4, label %bb7

bb6:                                              ; preds = %bb2
  %13 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_14.0 = extractvalue { i32, i1 } %13, 0
  %_14.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_14.1, label %panic, label %bb8

bb8:                                              ; preds = %bb6
  %14 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %n, i32 %_14.0)
  %_15.0 = extractvalue { i32, i1 } %14, 0
  %_15.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_15.1, label %panic1, label %bb9

panic:                                            ; preds = %bb6
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_983de5b3517b497ec6053dcea507c2d2) #22
  unreachable

bb9:                                              ; preds = %bb8
  %_16 = load i32, ptr %prod, align 4
  %15 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_15.0, i32 %_16)
  %_17.0 = extractvalue { i32, i1 } %15, 0
  %_17.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_17.1, label %panic2, label %bb10

panic1:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_311f1acc86f25b8b2cc1578cf40f9564) #22
  unreachable

bb10:                                             ; preds = %bb9
  %_20 = icmp eq i32 %_17.0, -2147483648
  %_21 = and i1 false, %_20
  br i1 %_21, label %panic3, label %bb12

panic2:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_b35454f86e12d7aeed11551ab917d86c) #22
  unreachable

bb12:                                             ; preds = %bb10
  %_0 = sdiv i32 %_17.0, 6
  ret i32 %_0

panic3:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_b35454f86e12d7aeed11551ab917d86c) #22
  unreachable

bb7:                                              ; preds = %bb5
  store i32 %_10.0, ptr %prod, align 4
  br label %bb2

panic4:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_d1374265df03e12e4efb6a82dc08f4c3) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

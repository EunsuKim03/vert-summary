define i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %n) unnamed_addr #3 {
start:
  %_13 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %sum = alloca [4 x i8], align 4
  store i32 0, ptr %sum, align 4
; call alloc::slice::<impl [T]>::sort_by
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha6db5b51a4e2ef8eE"(ptr align 4 %arr.0, i64 %arr.1) #20
  %_10 = icmp eq i32 %n, -2147483648
  %_11 = and i1 false, %_10
  br i1 %_11, label %panic, label %bb3

bb3:                                              ; preds = %start
  %_7 = sdiv i32 %n, 2
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h79494dd906d1c785E"(i32 0, i32 %_7) #20
  %_5.0 = extractvalue { i32, i32 } %0, 0
  %_5.1 = extractvalue { i32, i32 } %0, 1
  store i32 %_5.0, ptr %iter, align 4
  %1 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_5.1, ptr %1, align 4
  br label %bb5

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_0feb3e874339f083370efcc39313533b) #22
  unreachable

bb5:                                              ; preds = %bb17, %bb3
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h7ad361e547e41714E"(ptr align 4 %iter) #20
  %3 = extractvalue { i32, i32 } %2, 0
  %4 = extractvalue { i32, i32 } %2, 1
  store i32 %3, ptr %_13, align 4
  %5 = getelementptr inbounds i8, ptr %_13, i64 4
  store i32 %4, ptr %5, align 4
  %6 = load i32, ptr %_13, align 4
  %7 = getelementptr inbounds i8, ptr %_13, i64 4
  %8 = load i32, ptr %7, align 4
  %_15 = zext i32 %6 to i64
  %9 = trunc nuw i64 %_15 to i1
  br i1 %9, label %bb8, label %bb9

bb8:                                              ; preds = %bb5
  %10 = getelementptr inbounds i8, ptr %_13, i64 4
  %i = load i32, ptr %10, align 4
  %_19 = sext i32 %i to i64
  %_22 = icmp ult i64 %_19, %arr.1
  br i1 %_22, label %bb10, label %panic1

bb9:                                              ; preds = %bb5
  %_0 = load i32, ptr %sum, align 4
  ret i32 %_0

bb10:                                             ; preds = %bb8
  %11 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_19
  %_18 = load i32, ptr %11, align 4
  %12 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %_18)
  %_23.0 = extractvalue { i32, i1 } %12, 0
  %_23.1 = extractvalue { i32, i1 } %12, 1
  br i1 %_23.1, label %panic2, label %bb11

panic1:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_19, i64 %arr.1, ptr align 8 @alloc_57bf38ed32e8731b0a197bdecdf36282) #22
  unreachable

bb11:                                             ; preds = %bb10
  %13 = load i32, ptr %sum, align 4
  %14 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %13, i32 %_23.0)
  %_24.0 = extractvalue { i32, i1 } %14, 0
  %_24.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_24.1, label %panic3, label %bb12

panic2:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_09a93429fe00430b04b3dcba56255a97) #22
  unreachable

bb12:                                             ; preds = %bb11
  store i32 %_24.0, ptr %sum, align 4
  %15 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 %i)
  %_30.0 = extractvalue { i32, i1 } %15, 0
  %_30.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_30.1, label %panic4, label %bb13

panic3:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_48fd5a9d695f14b5518c34cb2c193137) #22
  unreachable

bb13:                                             ; preds = %bb12
  %16 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_30.0, i32 1)
  %_31.0 = extractvalue { i32, i1 } %16, 0
  %_31.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_31.1, label %panic5, label %bb14

panic4:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5790cb62bf155868deffcbbc1f666909) #22
  unreachable

bb14:                                             ; preds = %bb13
  %_27 = sext i32 %_31.0 to i64
  %_34 = icmp ult i64 %_27, %arr.1
  br i1 %_34, label %bb15, label %panic6

panic5:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_84ea72917d25e24eae9773b48e995cd6) #22
  unreachable

bb15:                                             ; preds = %bb14
  %17 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_27
  %_26 = load i32, ptr %17, align 4
  %18 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %_26)
  %_35.0 = extractvalue { i32, i1 } %18, 0
  %_35.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_35.1, label %panic7, label %bb16

panic6:                                           ; preds = %bb14
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_27, i64 %arr.1, ptr align 8 @alloc_55de0a27310e01c78c90605687da58bd) #22
  unreachable

bb16:                                             ; preds = %bb15
  %19 = load i32, ptr %sum, align 4
  %20 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %19, i32 %_35.0)
  %_36.0 = extractvalue { i32, i1 } %20, 0
  %_36.1 = extractvalue { i32, i1 } %20, 1
  br i1 %_36.1, label %panic8, label %bb17

panic7:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_b6e1684284bc0c55a8dde3c4d62ab9a0) #22
  unreachable

bb17:                                             ; preds = %bb16
  store i32 %_36.0, ptr %sum, align 4
  br label %bb5

panic8:                                           ; preds = %bb16
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_017ec5d15a30b10aa4cf754634dc46e0) #22
  unreachable

bb7:                                              ; No predecessors!
  unreachable
}

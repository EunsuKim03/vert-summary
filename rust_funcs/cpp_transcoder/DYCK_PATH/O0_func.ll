define i64 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_6 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %res = alloca [8 x i8], align 8
  store i64 1, ptr %res, align 8
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb7725a7b756a5661E"(i32 0, i32 %n) #20
  %_3.0 = extractvalue { i32, i32 } %0, 0
  %_3.1 = extractvalue { i32, i32 } %0, 1
  store i32 %_3.0, ptr %iter, align 4
  %1 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_3.1, ptr %1, align 4
  br label %bb2

bb2:                                              ; preds = %bb12, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17ha59e7770e82b55d1E"(ptr align 4 %iter) #20
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
  %11 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 2, i32 %n)
  %_13.0 = extractvalue { i32, i1 } %11, 0
  %_13.1 = extractvalue { i32, i1 } %11, 1
  br i1 %_13.1, label %panic3, label %bb7

bb6:                                              ; preds = %bb2
  %_23 = load i64, ptr %res, align 8
  %_26.0 = add i32 %n, 1
  %_26.1 = icmp ult i32 %_26.0, %n
  br i1 %_26.1, label %panic, label %bb13

bb13:                                             ; preds = %bb6
  %_24 = zext i32 %_26.0 to i64
  %_27 = icmp eq i64 %_24, 0
  br i1 %_27, label %panic1, label %bb14

panic:                                            ; preds = %bb6
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_6f3cb7690f69d657c97bbafa49206fac) #22
  unreachable

bb14:                                             ; preds = %bb13
  %_28 = icmp eq i64 %_24, -1
  %_29 = icmp eq i64 %_23, -9223372036854775808
  %_30 = and i1 %_28, %_29
  br i1 %_30, label %panic2, label %bb15

panic1:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_11657b00a84b94006104e54693b93fbb) #22
  unreachable

bb15:                                             ; preds = %bb14
  %_0 = sdiv i64 %_23, %_24
  ret i64 %_0

panic2:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_11657b00a84b94006104e54693b93fbb) #22
  unreachable

bb7:                                              ; preds = %bb5
  %_14.0 = sub i32 %_13.0, %i
  %_14.1 = icmp ult i32 %_13.0, %i
  br i1 %_14.1, label %panic4, label %bb8

panic3:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_07361aaf15c8592c8d7858f6e1466594) #22
  unreachable

bb8:                                              ; preds = %bb7
  %_10 = zext i32 %_14.0 to i64
  %12 = load i64, ptr %res, align 8
  %13 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %12, i64 %_10)
  %_15.0 = extractvalue { i64, i1 } %13, 0
  %_15.1 = extractvalue { i64, i1 } %13, 1
  br i1 %_15.1, label %panic5, label %bb9

panic4:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_efead7311e652022fd062a60099133fb) #22
  unreachable

bb9:                                              ; preds = %bb8
  store i64 %_15.0, ptr %res, align 8
  %_18.0 = add i32 %i, 1
  %_18.1 = icmp ult i32 %_18.0, %i
  br i1 %_18.1, label %panic6, label %bb10

panic5:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_4d24a424160fe29272a502d3ff05c121) #22
  unreachable

bb10:                                             ; preds = %bb9
  %_16 = zext i32 %_18.0 to i64
  %_19 = icmp eq i64 %_16, 0
  br i1 %_19, label %panic7, label %bb11

panic6:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2ed281f955a11628db476840cb66a332) #22
  unreachable

bb11:                                             ; preds = %bb10
  %_20 = icmp eq i64 %_16, -1
  %14 = load i64, ptr %res, align 8
  %_21 = icmp eq i64 %14, -9223372036854775808
  %_22 = and i1 %_20, %_21
  br i1 %_22, label %panic8, label %bb12

panic7:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_de9abdf5339075b8024d3fcb670c8176) #22
  unreachable

bb12:                                             ; preds = %bb11
  %15 = load i64, ptr %res, align 8
  %16 = sdiv i64 %15, %_16
  store i64 %16, ptr %res, align 8
  br label %bb2

panic8:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_de9abdf5339075b8024d3fcb670c8176) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

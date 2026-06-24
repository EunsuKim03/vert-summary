define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_8 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_6 = alloca [12 x i8], align 4
  %_5 = alloca [12 x i8], align 4
  %num = alloca [4 x i8], align 4
  %temp = alloca [4 x i8], align 4
  %ans = alloca [4 x i8], align 4
  store i32 0, ptr %ans, align 4
  store i32 0, ptr %temp, align 4
; call core::ops::range::RangeInclusive<Idx>::new
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h5da21732f785c076E"(ptr sret([12 x i8]) align 4 %_6, i32 1, i32 %n) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9c245eafad80e0caE"(ptr sret([12 x i8]) align 4 %_5, ptr align 4 %_6) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_5, i64 12, i1 false)
  br label %bb3

bb3:                                              ; preds = %bb11, %bb8, %bb6, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %0 = call { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h8693c0fb027c8547E"(ptr align 4 %iter) #17
  %1 = extractvalue { i32, i32 } %0, 0
  %2 = extractvalue { i32, i32 } %0, 1
  store i32 %1, ptr %_8, align 4
  %3 = getelementptr inbounds i8, ptr %_8, i64 4
  store i32 %2, ptr %3, align 4
  %4 = load i32, ptr %_8, align 4
  %5 = getelementptr inbounds i8, ptr %_8, i64 4
  %6 = load i32, ptr %5, align 4
  %_10 = zext i32 %4 to i64
  %7 = trunc nuw i64 %_10 to i1
  br i1 %7, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %8 = getelementptr inbounds i8, ptr %_8, i64 4
  %i = load i32, ptr %8, align 4
  %_12 = icmp sle i32 %i, %n
  br i1 %_12, label %bb8, label %bb3

bb7:                                              ; preds = %bb3
  %_0 = load i32, ptr %ans, align 4
  ret i32 %_0

bb8:                                              ; preds = %bb6
  %_14 = load i32, ptr %temp, align 4
  %_13 = icmp slt i32 %_14, %n
  br i1 %_13, label %bb9, label %bb3

bb9:                                              ; preds = %bb8
  store i32 1, ptr %num, align 4
  %9 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_15.0 = extractvalue { i32, i1 } %9, 0
  %_15.1 = extractvalue { i32, i1 } %9, 1
  br i1 %_15.1, label %panic, label %bb10

bb10:                                             ; preds = %bb9
  store i32 %_15.0, ptr %temp, align 4
  br label %bb11

panic:                                            ; preds = %bb9
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5effb3a5fc73527f64ce8476a00746f0) #22
  unreachable

bb11:                                             ; preds = %bb23, %bb10
  %_17 = load i32, ptr %temp, align 4
  %_16 = icmp slt i32 %_17, %n
  br i1 %_16, label %bb12, label %bb3

bb12:                                             ; preds = %bb11
  %_20 = load i32, ptr %temp, align 4
  %10 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_20, i32 %i)
  %_21.0 = extractvalue { i32, i1 } %10, 0
  %_21.1 = extractvalue { i32, i1 } %10, 1
  br i1 %_21.1, label %panic1, label %bb13

bb13:                                             ; preds = %bb12
  %_18 = icmp sle i32 %_21.0, %n
  br i1 %_18, label %bb14, label %bb17

panic1:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_98ce5c9ef9e658b6a15cef48b1c184b1) #22
  unreachable

bb17:                                             ; preds = %bb13
  %_28 = load i32, ptr %temp, align 4
  %11 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 %_28)
  %_29.0 = extractvalue { i32, i1 } %11, 0
  %_29.1 = extractvalue { i32, i1 } %11, 1
  br i1 %_29.1, label %panic2, label %bb18

bb14:                                             ; preds = %bb13
  %_23 = load i32, ptr %num, align 4
  %12 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i, i32 %_23)
  %_24.0 = extractvalue { i32, i1 } %12, 0
  %_24.1 = extractvalue { i32, i1 } %12, 1
  br i1 %_24.1, label %panic5, label %bb15

bb18:                                             ; preds = %bb17
  %_30 = load i32, ptr %num, align 4
  %13 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_29.0, i32 %_30)
  %_31.0 = extractvalue { i32, i1 } %13, 0
  %_31.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_31.1, label %panic3, label %bb19

panic2:                                           ; preds = %bb17
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_5de252d28f1c9f8ccb797109c9159292) #22
  unreachable

bb19:                                             ; preds = %bb18
  %14 = load i32, ptr %ans, align 4
  %15 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %14, i32 %_31.0)
  %_32.0 = extractvalue { i32, i1 } %15, 0
  %_32.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_32.1, label %panic4, label %bb20

panic3:                                           ; preds = %bb18
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_5de252d28f1c9f8ccb797109c9159292) #22
  unreachable

bb20:                                             ; preds = %bb19
  store i32 %_32.0, ptr %ans, align 4
  br label %bb21

panic4:                                           ; preds = %bb19
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_dd15580d425203d916a032073f238c53) #22
  unreachable

bb21:                                             ; preds = %bb16, %bb20
  %16 = load i32, ptr %temp, align 4
  %17 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %16, i32 %i)
  %_33.0 = extractvalue { i32, i1 } %17, 0
  %_33.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_33.1, label %panic7, label %bb22

bb15:                                             ; preds = %bb14
  %18 = load i32, ptr %ans, align 4
  %19 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %18, i32 %_24.0)
  %_25.0 = extractvalue { i32, i1 } %19, 0
  %_25.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_25.1, label %panic6, label %bb16

panic5:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_08c9bd13243f5490815d02baa46778ea) #22
  unreachable

bb16:                                             ; preds = %bb15
  store i32 %_25.0, ptr %ans, align 4
  br label %bb21

panic6:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f598aad35f76ea673fa4c9b3ff331083) #22
  unreachable

bb22:                                             ; preds = %bb21
  store i32 %_33.0, ptr %temp, align 4
  %20 = load i32, ptr %num, align 4
  %21 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %20, i32 1)
  %_34.0 = extractvalue { i32, i1 } %21, 0
  %_34.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_34.1, label %panic8, label %bb23

panic7:                                           ; preds = %bb21
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_abdb9b60e28fa8148e75c725894ffef9) #22
  unreachable

bb23:                                             ; preds = %bb22
  store i32 %_34.0, ptr %num, align 4
  br label %bb11

panic8:                                           ; preds = %bb22
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b5bdf654b777ed195419dc492f15ef39) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}

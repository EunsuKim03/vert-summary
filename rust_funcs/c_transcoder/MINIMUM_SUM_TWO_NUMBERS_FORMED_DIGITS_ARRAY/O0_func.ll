define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_11 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %b = alloca [4 x i8], align 4
  %a = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
; call alloc::slice::<impl [T]>::sort_by
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h5753901e1bb031baE"(ptr align 4 %arr, i64 2) #18
  store i32 0, ptr %a, align 4
  store i32 0, ptr %b, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb4b8df9c56ba7420E"(i32 0, i32 %n) #18
  %_8.0 = extractvalue { i32, i32 } %2, 0
  %_8.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_8.0, ptr %iter, align 4
  %3 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_8.1, ptr %3, align 4
  br label %bb3

bb3:                                              ; preds = %bb13, %bb17, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17heb94a804d597020bE"(ptr align 4 %iter) #18
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = extractvalue { i32, i32 } %4, 1
  store i32 %5, ptr %_11, align 4
  %7 = getelementptr inbounds i8, ptr %_11, i64 4
  store i32 %6, ptr %7, align 4
  %8 = load i32, ptr %_11, align 4
  %9 = getelementptr inbounds i8, ptr %_11, i64 4
  %10 = load i32, ptr %9, align 4
  %_13 = zext i32 %8 to i64
  %11 = trunc nuw i64 %_13 to i1
  br i1 %11, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %12 = getelementptr inbounds i8, ptr %_11, i64 4
  %i = load i32, ptr %12, align 4
  %_19 = icmp eq i32 %i, -2147483648
  %_20 = and i1 false, %_19
  br i1 %_20, label %panic1, label %bb9

bb7:                                              ; preds = %bb3
  %_35 = load i32, ptr %a, align 4
  %_36 = load i32, ptr %b, align 4
  %13 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_35, i32 %_36)
  %_37.0 = extractvalue { i32, i1 } %13, 0
  %_37.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_37.1, label %panic, label %bb18

bb18:                                             ; preds = %bb7
  ret i32 %_37.0

panic:                                            ; preds = %bb7
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_da8c3a0a7ad63a629b6be64099e89e54) #22
  unreachable

bb9:                                              ; preds = %bb6
  %_16 = srem i32 %i, 2
  %_15 = icmp eq i32 %_16, 0
  br i1 %_15, label %bb10, label %bb14

panic1:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_17fcc5645ce5650a1f14619d8eaed09e) #22
  unreachable

bb14:                                             ; preds = %bb9
  %_29 = load i32, ptr %b, align 4
  %14 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_29, i32 10)
  %_30.0 = extractvalue { i32, i1 } %14, 0
  %_30.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_30.1, label %panic2, label %bb15

bb10:                                             ; preds = %bb9
  %_22 = load i32, ptr %a, align 4
  %15 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_22, i32 10)
  %_23.0 = extractvalue { i32, i1 } %15, 0
  %_23.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_23.1, label %panic5, label %bb11

bb15:                                             ; preds = %bb14
  %_32 = sext i32 %i to i64
  %_33 = icmp ult i64 %_32, 2
  br i1 %_33, label %bb16, label %panic3

panic2:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_a4ee2784c4c2e798ef804c523ea32ff6) #22
  unreachable

bb16:                                             ; preds = %bb15
  %16 = getelementptr inbounds nuw i32, ptr %arr, i64 %_32
  %_31 = load i32, ptr %16, align 4
  %17 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_30.0, i32 %_31)
  %_34.0 = extractvalue { i32, i1 } %17, 0
  %_34.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_34.1, label %panic4, label %bb17

panic3:                                           ; preds = %bb15
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_32, i64 2, ptr align 8 @alloc_65bcbd290246373e4525473de6684cb2) #22
  unreachable

bb17:                                             ; preds = %bb16
  store i32 %_34.0, ptr %b, align 4
  br label %bb3

panic4:                                           ; preds = %bb16
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a4ee2784c4c2e798ef804c523ea32ff6) #22
  unreachable

bb11:                                             ; preds = %bb10
  %_25 = sext i32 %i to i64
  %_26 = icmp ult i64 %_25, 2
  br i1 %_26, label %bb12, label %panic6

panic5:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_73a3a30851d6b0dc79e221699b602f40) #22
  unreachable

bb12:                                             ; preds = %bb11
  %18 = getelementptr inbounds nuw i32, ptr %arr, i64 %_25
  %_24 = load i32, ptr %18, align 4
  %19 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_23.0, i32 %_24)
  %_27.0 = extractvalue { i32, i1 } %19, 0
  %_27.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_27.1, label %panic7, label %bb13

panic6:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_25, i64 2, ptr align 8 @alloc_561a0737e47d1a51d16a536d95970f05) #22
  unreachable

bb13:                                             ; preds = %bb12
  store i32 %_27.0, ptr %a, align 4
  br label %bb3

panic7:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_73a3a30851d6b0dc79e221699b602f40) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}

define i32 @f_gold(i32 %a, i32 %b) unnamed_addr #3 {
start:
  %j = alloca [4 x i8], align 4
  %_7 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_5 = alloca [12 x i8], align 4
  %_4 = alloca [12 x i8], align 4
  %cnt = alloca [4 x i8], align 4
  store i32 0, ptr %cnt, align 4
; call core::ops::range::RangeInclusive<Idx>::new
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h903a3cd4724295a0E"(ptr sret([12 x i8]) align 4 %_5, i32 %a, i32 %b) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hef0195cd6f9895e9E"(ptr sret([12 x i8]) align 4 %_4, ptr align 4 %_5) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_4, i64 12, i1 false)
  br label %bb3

bb3:                                              ; preds = %bb9, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %0 = call { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h70910cda97bca643E"(ptr align 4 %iter) #17
  %1 = extractvalue { i32, i32 } %0, 0
  %2 = extractvalue { i32, i32 } %0, 1
  store i32 %1, ptr %_7, align 4
  %3 = getelementptr inbounds i8, ptr %_7, i64 4
  store i32 %2, ptr %3, align 4
  %4 = load i32, ptr %_7, align 4
  %5 = getelementptr inbounds i8, ptr %_7, i64 4
  %6 = load i32, ptr %5, align 4
  %_9 = zext i32 %4 to i64
  %7 = trunc nuw i64 %_9 to i1
  br i1 %7, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %8 = getelementptr inbounds i8, ptr %_7, i64 4
  %i = load i32, ptr %8, align 4
  store i32 1, ptr %j, align 4
  br label %bb8

bb7:                                              ; preds = %bb3
  %_0 = load i32, ptr %cnt, align 4
  ret i32 %_0

bb8:                                              ; preds = %bb15, %bb6
  %_14 = load i32, ptr %j, align 4
  %_15 = load i32, ptr %j, align 4
  %9 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_14, i32 %_15)
  %_16.0 = extractvalue { i32, i1 } %9, 0
  %_16.1 = extractvalue { i32, i1 } %9, 1
  br i1 %_16.1, label %panic, label %bb9

bb9:                                              ; preds = %bb8
  %_12 = icmp sle i32 %_16.0, %i
  br i1 %_12, label %bb10, label %bb3

panic:                                            ; preds = %bb8
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_071af8d5770441e772fa15a32a835a0e) #22
  unreachable

bb10:                                             ; preds = %bb9
  %_19 = load i32, ptr %j, align 4
  %_20 = load i32, ptr %j, align 4
  %10 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_19, i32 %_20)
  %_21.0 = extractvalue { i32, i1 } %10, 0
  %_21.1 = extractvalue { i32, i1 } %10, 1
  br i1 %_21.1, label %panic1, label %bb11

bb11:                                             ; preds = %bb10
  %_17 = icmp eq i32 %_21.0, %i
  br i1 %_17, label %bb12, label %bb14

panic1:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_c8e2f64537bcd2d83255e1c4e094b962) #22
  unreachable

bb14:                                             ; preds = %bb13, %bb11
  %11 = load i32, ptr %j, align 4
  %12 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %11, i32 1)
  %_23.0 = extractvalue { i32, i1 } %12, 0
  %_23.1 = extractvalue { i32, i1 } %12, 1
  br i1 %_23.1, label %panic3, label %bb15

bb12:                                             ; preds = %bb11
  %13 = load i32, ptr %cnt, align 4
  %14 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %13, i32 1)
  %_22.0 = extractvalue { i32, i1 } %14, 0
  %_22.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_22.1, label %panic2, label %bb13

bb13:                                             ; preds = %bb12
  store i32 %_22.0, ptr %cnt, align 4
  br label %bb14

panic2:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_1569e96046c0f915999a6f3da0c55c37) #22
  unreachable

bb15:                                             ; preds = %bb14
  store i32 %_23.0, ptr %j, align 4
  br label %bb8

panic3:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_1d9afaab4e90ba254e64cf6ebeabae36) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}

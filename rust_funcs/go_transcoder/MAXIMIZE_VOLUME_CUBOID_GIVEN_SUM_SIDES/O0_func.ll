define i32 @f_gold(i32 %s) unnamed_addr #3 {
start:
  %_15 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_8 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %maxvalue = alloca [4 x i8], align 4
  store i32 0, ptr %maxvalue, align 4
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %s, i32 1)
  %_6.0 = extractvalue { i32, i1 } %0, 0
  %_6.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_6.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %1 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h11c471bda114e457E"(i32 1, i32 %_6.0) #20
  %_3.0 = extractvalue { i32, i32 } %1, 0
  %_3.1 = extractvalue { i32, i32 } %1, 1
  store i32 %_3.0, ptr %iter, align 4
  %2 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_3.1, ptr %2, align 4
  br label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_7e77d0660ee969551e03dbb849a3c67a) #22
  unreachable

bb3:                                              ; preds = %bb9, %bb1
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %3 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h0fde62d095686e31E"(ptr align 4 %iter) #20
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = extractvalue { i32, i32 } %3, 1
  store i32 %4, ptr %_8, align 4
  %6 = getelementptr inbounds i8, ptr %_8, i64 4
  store i32 %5, ptr %6, align 4
  %7 = load i32, ptr %_8, align 4
  %8 = getelementptr inbounds i8, ptr %_8, i64 4
  %9 = load i32, ptr %8, align 4
  %_10 = zext i32 %7 to i64
  %10 = trunc nuw i64 %_10 to i1
  br i1 %10, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %11 = getelementptr inbounds i8, ptr %_8, i64 4
  %i = load i32, ptr %11, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %12 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h11c471bda114e457E"(i32 1, i32 %s) #20
  %_12.0 = extractvalue { i32, i32 } %12, 0
  %_12.1 = extractvalue { i32, i32 } %12, 1
  store i32 %_12.0, ptr %iter1, align 4
  %13 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_12.1, ptr %13, align 4
  br label %bb9

bb7:                                              ; preds = %bb3
  %_0 = load i32, ptr %maxvalue, align 4
  ret i32 %_0

bb9:                                              ; preds = %bb15, %bb6
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %14 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h0fde62d095686e31E"(ptr align 4 %iter1) #20
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = extractvalue { i32, i32 } %14, 1
  store i32 %15, ptr %_15, align 4
  %17 = getelementptr inbounds i8, ptr %_15, i64 4
  store i32 %16, ptr %17, align 4
  %18 = load i32, ptr %_15, align 4
  %19 = getelementptr inbounds i8, ptr %_15, i64 4
  %20 = load i32, ptr %19, align 4
  %_17 = zext i32 %18 to i64
  %21 = trunc nuw i64 %_17 to i1
  br i1 %21, label %bb11, label %bb3

bb11:                                             ; preds = %bb9
  %22 = getelementptr inbounds i8, ptr %_15, i64 4
  %j = load i32, ptr %22, align 4
  %23 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %s, i32 %i)
  %_21.0 = extractvalue { i32, i1 } %23, 0
  %_21.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_21.1, label %panic2, label %bb12

bb12:                                             ; preds = %bb11
  %24 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_21.0, i32 %j)
  %_22.0 = extractvalue { i32, i1 } %24, 0
  %_22.1 = extractvalue { i32, i1 } %24, 1
  br i1 %_22.1, label %panic3, label %bb13

panic2:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_586ef5565439173cd5452af225f0accd) #22
  unreachable

bb13:                                             ; preds = %bb12
  %_24 = load i32, ptr %maxvalue, align 4
  %25 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i, i32 %j)
  %_27.0 = extractvalue { i32, i1 } %25, 0
  %_27.1 = extractvalue { i32, i1 } %25, 1
  br i1 %_27.1, label %panic4, label %bb14

panic3:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_586ef5565439173cd5452af225f0accd) #22
  unreachable

bb14:                                             ; preds = %bb13
  %26 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_27.0, i32 %_22.0)
  %_28.0 = extractvalue { i32, i1 } %26, 0
  %_28.1 = extractvalue { i32, i1 } %26, 1
  br i1 %_28.1, label %panic5, label %bb15

panic4:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_6a5cd333fe566bcdd0e04814e4c307ef) #22
  unreachable

bb15:                                             ; preds = %bb14
; call core::cmp::Ord::max
  %_23 = call i32 @_ZN4core3cmp3Ord3max17hed55212a01a0b406E(i32 %_24, i32 %_28.0) #20
  store i32 %_23, ptr %maxvalue, align 4
  br label %bb9

panic5:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_6a5cd333fe566bcdd0e04814e4c307ef) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}

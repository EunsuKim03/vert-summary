define i32 @f_gold(ptr align 4 %A.0, i64 %A.1, ptr align 4 %B.0, i64 %B.1, i32 %n) unnamed_addr #3 {
start:
  %_10 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %result = alloca [4 x i8], align 4
; call alloc::slice::<impl [T]>::sort_by
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h134b00356443ff9dE"(ptr align 4 %A.0, i64 %A.1) #20
; call alloc::slice::<impl [T]>::sort_by
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hab482de571b7888dE"(ptr align 4 %B.0, i64 %B.1) #20
  store i32 0, ptr %result, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9ef9f89359ae419dE"(i32 0, i32 %n) #20
  %_7.0 = extractvalue { i32, i32 } %0, 0
  %_7.1 = extractvalue { i32, i32 } %0, 1
  store i32 %_7.0, ptr %iter, align 4
  %1 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_7.1, ptr %1, align 4
  br label %bb4

bb4:                                              ; preds = %bb14, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h397858687018b3ddE"(ptr align 4 %iter) #20
  %3 = extractvalue { i32, i32 } %2, 0
  %4 = extractvalue { i32, i32 } %2, 1
  store i32 %3, ptr %_10, align 4
  %5 = getelementptr inbounds i8, ptr %_10, i64 4
  store i32 %4, ptr %5, align 4
  %6 = load i32, ptr %_10, align 4
  %7 = getelementptr inbounds i8, ptr %_10, i64 4
  %8 = load i32, ptr %7, align 4
  %_12 = zext i32 %6 to i64
  %9 = trunc nuw i64 %_12 to i1
  br i1 %9, label %bb7, label %bb8

bb7:                                              ; preds = %bb4
  %10 = getelementptr inbounds i8, ptr %_10, i64 4
  %i = load i32, ptr %10, align 4
  %_16 = sext i32 %i to i64
  %_19 = icmp ult i64 %_16, %A.1
  br i1 %_19, label %bb9, label %panic

bb8:                                              ; preds = %bb4
  %_0 = load i32, ptr %result, align 4
  ret i32 %_0

bb9:                                              ; preds = %bb7
  %11 = getelementptr inbounds nuw i32, ptr %A.0, i64 %_16
  %_15 = load i32, ptr %11, align 4
  %12 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_24.0 = extractvalue { i32, i1 } %12, 0
  %_24.1 = extractvalue { i32, i1 } %12, 1
  br i1 %_24.1, label %panic1, label %bb10

panic:                                            ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_16, i64 %A.1, ptr align 8 @alloc_390ea9071b49ed4ab4959f8c81801f2f) #22
  unreachable

bb10:                                             ; preds = %bb9
  %13 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_24.0, i32 %i)
  %_25.0 = extractvalue { i32, i1 } %13, 0
  %_25.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_25.1, label %panic2, label %bb11

panic1:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_763c97ae01abd7594dce0ce05797f329) #22
  unreachable

bb11:                                             ; preds = %bb10
  %_21 = sext i32 %_25.0 to i64
  %_28 = icmp ult i64 %_21, %B.1
  br i1 %_28, label %bb12, label %panic3

panic2:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3bf578683e1adc64b5619c5d3e1cbfef) #22
  unreachable

bb12:                                             ; preds = %bb11
  %14 = getelementptr inbounds nuw i32, ptr %B.0, i64 %_21
  %_20 = load i32, ptr %14, align 4
  %15 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_15, i32 %_20)
  %_29.0 = extractvalue { i32, i1 } %15, 0
  %_29.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_29.1, label %panic4, label %bb13

panic3:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_21, i64 %B.1, ptr align 8 @alloc_3a0728a11c48e5aa548d60738b00786f) #22
  unreachable

bb13:                                             ; preds = %bb12
  %16 = load i32, ptr %result, align 4
  %17 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %16, i32 %_29.0)
  %_30.0 = extractvalue { i32, i1 } %17, 0
  %_30.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_30.1, label %panic5, label %bb14

panic4:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_390ea9071b49ed4ab4959f8c81801f2f) #22
  unreachable

bb14:                                             ; preds = %bb13
  store i32 %_30.0, ptr %result, align 4
  br label %bb4

panic5:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e2f7f7a38dc03a9a252ce9a7a9605beb) #22
  unreachable

bb6:                                              ; No predecessors!
  unreachable
}

define i32 @f_gold(ptr align 1 %s.0, i64 %s.1) unnamed_addr #3 {
start:
  %_8 = alloca [4 x i8], align 4
  %iter = alloca [16 x i8], align 8
  %c_count = alloca [4 x i8], align 4
  %b_count = alloca [4 x i8], align 4
  %a_count = alloca [4 x i8], align 4
  store i32 0, ptr %a_count, align 4
  store i32 0, ptr %b_count, align 4
  store i32 0, ptr %c_count, align 4
; call core::str::<impl str>::chars
  %0 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h2d0a5a8f16409b1fE"(ptr align 1 %s.0, i64 %s.1) #20
  %_6.0 = extractvalue { ptr, ptr } %0, 0
  %_6.1 = extractvalue { ptr, ptr } %0, 1
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %1 = call { ptr, ptr } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h432edd607cd51794E"(ptr %_6.0, ptr %_6.1) #20
  %_5.0 = extractvalue { ptr, ptr } %1, 0
  %_5.1 = extractvalue { ptr, ptr } %1, 1
  store ptr %_5.0, ptr %iter, align 8
  %2 = getelementptr inbounds i8, ptr %iter, i64 8
  store ptr %_5.1, ptr %2, align 8
  br label %bb3

bb3:                                              ; preds = %bb16, %bb14, %bb12, %bb6, %start
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::next
  %3 = call i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h38c57977928c5efeE"(ptr align 8 %iter) #20
  store i32 %3, ptr %_8, align 4
  %4 = load i32, ptr %_8, align 4
  %5 = icmp eq i32 %4, 1114112
  %_10 = select i1 %5, i64 0, i64 1
  %6 = trunc nuw i64 %_10 to i1
  br i1 %6, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %c = load i32, ptr %_8, align 4
  switch i32 %c, label %bb3 [
    i32 97, label %bb10
    i32 98, label %bb9
    i32 99, label %bb8
  ]

bb7:                                              ; preds = %bb3
  %_0 = load i32, ptr %c_count, align 4
  ret i32 %_0

bb10:                                             ; preds = %bb6
  %_13 = load i32, ptr %a_count, align 4
  %7 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %_13)
  %_14.0 = extractvalue { i32, i1 } %7, 0
  %_14.1 = extractvalue { i32, i1 } %7, 1
  br i1 %_14.1, label %panic, label %bb11

bb9:                                              ; preds = %bb6
  %_16 = load i32, ptr %a_count, align 4
  %_18 = load i32, ptr %b_count, align 4
  %8 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %_18)
  %_19.0 = extractvalue { i32, i1 } %8, 0
  %_19.1 = extractvalue { i32, i1 } %8, 1
  br i1 %_19.1, label %panic2, label %bb13

bb8:                                              ; preds = %bb6
  %_21 = load i32, ptr %b_count, align 4
  %_23 = load i32, ptr %c_count, align 4
  %9 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %_23)
  %_24.0 = extractvalue { i32, i1 } %9, 0
  %_24.1 = extractvalue { i32, i1 } %9, 1
  br i1 %_24.1, label %panic4, label %bb15

bb11:                                             ; preds = %bb10
  %10 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 1, i32 %_14.0)
  %_15.0 = extractvalue { i32, i1 } %10, 0
  %_15.1 = extractvalue { i32, i1 } %10, 1
  br i1 %_15.1, label %panic1, label %bb12

panic:                                            ; preds = %bb10
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_41af4474f9c4fa1903e87357df83e0b8) #22
  unreachable

bb12:                                             ; preds = %bb11
  store i32 %_15.0, ptr %a_count, align 4
  br label %bb3

panic1:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_92c92555b8cc10fa34788e80c83cf477) #22
  unreachable

bb13:                                             ; preds = %bb9
  %11 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_16, i32 %_19.0)
  %_20.0 = extractvalue { i32, i1 } %11, 0
  %_20.1 = extractvalue { i32, i1 } %11, 1
  br i1 %_20.1, label %panic3, label %bb14

panic2:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_bbba7322cbf9535aa81a02e1cfa39995) #22
  unreachable

bb14:                                             ; preds = %bb13
  store i32 %_20.0, ptr %b_count, align 4
  br label %bb3

panic3:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_98171537209356366b94e8d893442d70) #22
  unreachable

bb15:                                             ; preds = %bb8
  %12 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_21, i32 %_24.0)
  %_25.0 = extractvalue { i32, i1 } %12, 0
  %_25.1 = extractvalue { i32, i1 } %12, 1
  br i1 %_25.1, label %panic5, label %bb16

panic4:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_21ab5633cc44b92acb0ea0d986fffc59) #22
  unreachable

bb16:                                             ; preds = %bb15
  store i32 %_25.0, ptr %c_count, align 4
  br label %bb3

panic5:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a6013b2e43284065f22178ee47c0bd6d) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}

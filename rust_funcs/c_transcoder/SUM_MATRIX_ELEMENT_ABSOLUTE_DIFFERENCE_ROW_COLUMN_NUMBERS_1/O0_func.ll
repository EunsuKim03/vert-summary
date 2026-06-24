define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_6 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %sum = alloca [4 x i8], align 4
  store i32 0, ptr %sum, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hba6dbd42a5f32559E"(i32 0, i32 %n) #20
  %_3.0 = extractvalue { i32, i32 } %0, 0
  %_3.1 = extractvalue { i32, i32 } %0, 1
  store i32 %_3.0, ptr %iter, align 4
  %1 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_3.1, ptr %1, align 4
  br label %bb2

bb2:                                              ; preds = %bb9, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h081e7d6bd9fadb1bE"(ptr align 4 %iter) #20
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
  %11 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 %i)
  %_12.0 = extractvalue { i32, i1 } %11, 0
  %_12.1 = extractvalue { i32, i1 } %11, 1
  br i1 %_12.1, label %panic1, label %bb7

bb6:                                              ; preds = %bb2
  %_15 = load i32, ptr %sum, align 4
  %12 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %_15)
  %_16.0 = extractvalue { i32, i1 } %12, 0
  %_16.1 = extractvalue { i32, i1 } %12, 1
  br i1 %_16.1, label %panic, label %bb10

bb10:                                             ; preds = %bb6
  ret i32 %_16.0

panic:                                            ; preds = %bb6
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_cba92d3bfccb203fa5fc7b21a663ca3c) #22
  unreachable

bb7:                                              ; preds = %bb5
  %13 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i, i32 %_12.0)
  %_13.0 = extractvalue { i32, i1 } %13, 0
  %_13.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_13.1, label %panic2, label %bb8

panic1:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_8cc19ca6d6f4c7ae98152050f6f0a521) #22
  unreachable

bb8:                                              ; preds = %bb7
  %14 = load i32, ptr %sum, align 4
  %15 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %14, i32 %_13.0)
  %_14.0 = extractvalue { i32, i1 } %15, 0
  %_14.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_14.1, label %panic3, label %bb9

panic2:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_7ea3acc15b0906a1816333ea249376ba) #22
  unreachable

bb9:                                              ; preds = %bb8
  store i32 %_14.0, ptr %sum, align 4
  br label %bb2

panic3:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e6b365212deeacf36c1e2785f719577c) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

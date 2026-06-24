define i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %n) unnamed_addr #3 {
start:
  %_9 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %sum = alloca [4 x i8], align 4
; call alloc::slice::<impl [T]>::sort_by
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h3da93aca040af76cE"(ptr align 4 %arr.0, i64 %arr.1) #17
  store i32 0, ptr %sum, align 4
  %_7 = sext i32 %n to i64
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h139a08111be56571E"(i64 0, i64 %_7) #17
  %_5.0 = extractvalue { i64, i64 } %0, 0
  %_5.1 = extractvalue { i64, i64 } %0, 1
  store i64 %_5.0, ptr %iter, align 8
  %1 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_5.1, ptr %1, align 8
  br label %bb3

bb3:                                              ; preds = %bb10, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h64801283c107c676E"(ptr align 8 %iter) #17
  %3 = extractvalue { i64, i64 } %2, 0
  %4 = extractvalue { i64, i64 } %2, 1
  store i64 %3, ptr %_9, align 8
  %5 = getelementptr inbounds i8, ptr %_9, i64 8
  store i64 %4, ptr %5, align 8
  %_11 = load i64, ptr %_9, align 8
  %6 = getelementptr inbounds i8, ptr %_9, i64 8
  %7 = load i64, ptr %6, align 8
  %8 = trunc nuw i64 %_11 to i1
  br i1 %8, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %9 = getelementptr inbounds i8, ptr %_9, i64 8
  %i = load i64, ptr %9, align 8
  %_17 = icmp ult i64 %i, %arr.1
  br i1 %_17, label %bb8, label %panic

bb7:                                              ; preds = %bb3
  %_0 = load i32, ptr %sum, align 4
  ret i32 %_0

bb8:                                              ; preds = %bb6
  %10 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %i
  %_14 = load i32, ptr %10, align 4
  %_18 = trunc i64 %i to i32
  %11 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_14, i32 %_18)
  %_19.0 = extractvalue { i32, i1 } %11, 0
  %_19.1 = extractvalue { i32, i1 } %11, 1
  br i1 %_19.1, label %panic1, label %bb9

panic:                                            ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 %arr.1, ptr align 8 @alloc_f8e0d76b07a353d1835879eef3f6aab5) #22
  unreachable

bb9:                                              ; preds = %bb8
  %12 = load i32, ptr %sum, align 4
  %13 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %12, i32 %_19.0)
  %_20.0 = extractvalue { i32, i1 } %13, 0
  %_20.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_20.1, label %panic2, label %bb10

panic1:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_f8e0d76b07a353d1835879eef3f6aab5) #22
  unreachable

bb10:                                             ; preds = %bb9
  store i32 %_20.0, ptr %sum, align 4
  br label %bb3

panic2:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_147b9070137255f26c81f70a5eb4c16b) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}

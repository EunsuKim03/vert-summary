define i32 @f_gold(i32 %x, i32 %y) unnamed_addr #3 {
start:
  %_7 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %res = alloca [4 x i8], align 4
  store i32 1, ptr %res, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hce57eb683b35f0b0E"(i32 0, i32 %y) #20
  %_4.0 = extractvalue { i32, i32 } %0, 0
  %_4.1 = extractvalue { i32, i32 } %0, 1
  store i32 %_4.0, ptr %iter, align 4
  %1 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_4.1, ptr %1, align 4
  br label %bb2

bb2:                                              ; preds = %bb9, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17ha30455430e4045a5E"(ptr align 4 %iter) #20
  %3 = extractvalue { i32, i32 } %2, 0
  %4 = extractvalue { i32, i32 } %2, 1
  store i32 %3, ptr %_7, align 4
  %5 = getelementptr inbounds i8, ptr %_7, i64 4
  store i32 %4, ptr %5, align 4
  %6 = load i32, ptr %_7, align 4
  %7 = getelementptr inbounds i8, ptr %_7, i64 4
  %8 = load i32, ptr %7, align 4
  %_9 = zext i32 %6 to i64
  %9 = trunc nuw i64 %_9 to i1
  br i1 %9, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %10 = getelementptr inbounds i8, ptr %_7, i64 4
  %i = load i32, ptr %10, align 4
  %_12 = load i32, ptr %res, align 4
  %11 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_12, i32 %x)
  %_13.0 = extractvalue { i32, i1 } %11, 0
  %_13.1 = extractvalue { i32, i1 } %11, 1
  br i1 %_13.1, label %panic, label %bb7

bb6:                                              ; preds = %bb2
  %_0 = load i32, ptr %res, align 4
  ret i32 %_0

bb7:                                              ; preds = %bb5
  %_16 = icmp eq i32 %_13.0, -2147483648
  %_17 = and i1 false, %_16
  br i1 %_17, label %panic1, label %bb9

panic:                                            ; preds = %bb5
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_397c129892d5ca89f808365192a12cac) #22
  unreachable

bb9:                                              ; preds = %bb7
  %12 = srem i32 %_13.0, 10
  store i32 %12, ptr %res, align 4
  br label %bb2

panic1:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_397c129892d5ca89f808365192a12cac) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

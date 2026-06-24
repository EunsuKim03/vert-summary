define i32 @f_gold(i32 %N, i32 %K) unnamed_addr #3 {
start:
  %_7 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_5 = alloca [12 x i8], align 4
  %_4 = alloca [12 x i8], align 4
  %ans = alloca [4 x i8], align 4
  store i32 0, ptr %ans, align 4
; call core::ops::range::RangeInclusive<Idx>::new
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h8219ed7f7890de74E"(ptr sret([12 x i8]) align 4 %_5, i32 1, i32 %N) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf791048c6dbba9d5E"(ptr sret([12 x i8]) align 4 %_4, ptr align 4 %_5) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_4, i64 12, i1 false)
  br label %bb3

bb3:                                              ; preds = %bb10, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %0 = call { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hfe51f1235b5afeeaE"(ptr align 4 %iter) #17
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
  %_12 = icmp eq i32 %K, 0
  br i1 %_12, label %panic, label %bb8

bb7:                                              ; preds = %bb3
  %_0 = load i32, ptr %ans, align 4
  ret i32 %_0

bb8:                                              ; preds = %bb6
  %_13 = icmp eq i32 %K, -1
  %_14 = icmp eq i32 %i, -2147483648
  %_15 = and i1 %_13, %_14
  br i1 %_15, label %panic1, label %bb9

panic:                                            ; preds = %bb6
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_89256b4be9b43fd47d931bba252d43bf) #22
  unreachable

bb9:                                              ; preds = %bb8
  %_11 = srem i32 %i, %K
  %9 = load i32, ptr %ans, align 4
  %10 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %9, i32 %_11)
  %_16.0 = extractvalue { i32, i1 } %10, 0
  %_16.1 = extractvalue { i32, i1 } %10, 1
  br i1 %_16.1, label %panic2, label %bb10

panic1:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_89256b4be9b43fd47d931bba252d43bf) #22
  unreachable

bb10:                                             ; preds = %bb9
  store i32 %_16.0, ptr %ans, align 4
  br label %bb3

panic2:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_733f1f482672aa96ec0920b03083e94e) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}

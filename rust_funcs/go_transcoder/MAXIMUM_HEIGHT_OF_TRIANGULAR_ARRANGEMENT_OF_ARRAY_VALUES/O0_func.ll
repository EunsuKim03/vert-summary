define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_7 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_5 = alloca [12 x i8], align 4
  %_4 = alloca [12 x i8], align 4
  %result = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %a = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 8 %1, i64 8, i1 false)
  store i32 1, ptr %result, align 4
; call core::ops::range::RangeInclusive<Idx>::new
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h367ab7b76407a872E"(ptr sret([12 x i8]) align 4 %_5, i32 1, i32 %n) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h26748a5ec58cf9ceE"(ptr sret([12 x i8]) align 4 %_4, ptr align 4 %_5) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_4, i64 12, i1 false)
  br label %bb3

bb3:                                              ; preds = %bb9, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %2 = call { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h31a3ea186beee6e9E"(ptr align 4 %iter) #17
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
  br i1 %9, label %bb6, label %bb10

bb6:                                              ; preds = %bb3
  %10 = getelementptr inbounds i8, ptr %_7, i64 4
  %i = load i32, ptr %10, align 4
  %11 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 1)
  %_15.0 = extractvalue { i32, i1 } %11, 0
  %_15.1 = extractvalue { i32, i1 } %11, 1
  br i1 %_15.1, label %panic, label %bb7

bb10:                                             ; preds = %bb8, %bb3
  %_0 = load i32, ptr %result, align 4
  ret i32 %_0

bb7:                                              ; preds = %bb6
  %12 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i, i32 %_15.0)
  %_16.0 = extractvalue { i32, i1 } %12, 0
  %_16.1 = extractvalue { i32, i1 } %12, 1
  br i1 %_16.1, label %panic1, label %bb8

panic:                                            ; preds = %bb6
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ff16b73dc09eb57424ab098322995217) #22
  unreachable

bb8:                                              ; preds = %bb7
  %_12 = sitofp i32 %_16.0 to float
  %y = fdiv float %_12, 2.000000e+00
  %_18 = sitofp i32 %n to float
  %_17 = fcmp olt float %y, %_18
  br i1 %_17, label %bb9, label %bb10

panic1:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_07adf712ed31b868004336ff5dd07d7d) #22
  unreachable

bb9:                                              ; preds = %bb8
  store i32 %i, ptr %result, align 4
  br label %bb3

bb5:                                              ; No predecessors!
  unreachable
}

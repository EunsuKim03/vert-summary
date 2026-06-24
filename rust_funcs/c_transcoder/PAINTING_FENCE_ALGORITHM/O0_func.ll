define i32 @f_gold(i32 %n, i32 %k) unnamed_addr #3 {
start:
  %_10 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_8 = alloca [12 x i8], align 4
  %_7 = alloca [12 x i8], align 4
  %diff = alloca [4 x i8], align 4
  %same = alloca [4 x i8], align 4
  %total = alloca [4 x i8], align 4
  store i32 %k, ptr %total, align 4
  store i32 0, ptr %same, align 4
  store i32 %k, ptr %diff, align 4
; call core::ops::range::RangeInclusive<Idx>::new
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h2832f6830149a985E"(ptr sret([12 x i8]) align 4 %_8, i32 2, i32 %n) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h87eb4c902b72ac4eE"(ptr sret([12 x i8]) align 4 %_7, ptr align 4 %_8) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_7, i64 12, i1 false)
  br label %bb3

bb3:                                              ; preds = %bb14, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %0 = call { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17ha9238a5aeebfe6f3E"(ptr align 4 %iter) #17
  %1 = extractvalue { i32, i32 } %0, 0
  %2 = extractvalue { i32, i32 } %0, 1
  store i32 %1, ptr %_10, align 4
  %3 = getelementptr inbounds i8, ptr %_10, i64 4
  store i32 %2, ptr %3, align 4
  %4 = load i32, ptr %_10, align 4
  %5 = getelementptr inbounds i8, ptr %_10, i64 4
  %6 = load i32, ptr %5, align 4
  %_12 = zext i32 %4 to i64
  %7 = trunc nuw i64 %_12 to i1
  br i1 %7, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %8 = getelementptr inbounds i8, ptr %_10, i64 4
  %i = load i32, ptr %8, align 4
  %_14 = load i32, ptr %diff, align 4
  store i32 %_14, ptr %same, align 4
  %_15 = load i32, ptr %total, align 4
  %9 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %k, i32 1)
  %_17.0 = extractvalue { i32, i1 } %9, 0
  %_17.1 = extractvalue { i32, i1 } %9, 1
  br i1 %_17.1, label %panic, label %bb8

bb7:                                              ; preds = %bb3
  %_0 = load i32, ptr %total, align 4
  ret i32 %_0

bb8:                                              ; preds = %bb6
  %10 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_15, i32 %_17.0)
  %_18.0 = extractvalue { i32, i1 } %10, 0
  %_18.1 = extractvalue { i32, i1 } %10, 1
  br i1 %_18.1, label %panic1, label %bb9

panic:                                            ; preds = %bb6
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3ae38d05177adcb362471ad68b8c3c68) #22
  unreachable

bb9:                                              ; preds = %bb8
  store i32 %_18.0, ptr %diff, align 4
  %_19 = load i32, ptr %diff, align 4
  %_22 = icmp eq i32 %_19, -2147483648
  %_23 = and i1 false, %_22
  br i1 %_23, label %panic2, label %bb11

panic1:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_9413f1d0503c18086339164f6bcde95d) #22
  unreachable

bb11:                                             ; preds = %bb9
  %11 = srem i32 %_19, 1000000007
  store i32 %11, ptr %diff, align 4
  %_25 = load i32, ptr %same, align 4
  %_26 = load i32, ptr %diff, align 4
  %12 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_25, i32 %_26)
  %_27.0 = extractvalue { i32, i1 } %12, 0
  %_27.1 = extractvalue { i32, i1 } %12, 1
  br i1 %_27.1, label %panic3, label %bb12

panic2:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_e063d1a6251a0e2cfb04bf31f86e2c6f) #22
  unreachable

bb12:                                             ; preds = %bb11
  %_30 = icmp eq i32 %_27.0, -2147483648
  %_31 = and i1 false, %_30
  br i1 %_31, label %panic4, label %bb14

panic3:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e1fd51df436f38760289ec56722c0ffc) #22
  unreachable

bb14:                                             ; preds = %bb12
  %13 = srem i32 %_27.0, 1000000007
  store i32 %13, ptr %total, align 4
  br label %bb3

panic4:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_e1fd51df436f38760289ec56722c0ffc) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}

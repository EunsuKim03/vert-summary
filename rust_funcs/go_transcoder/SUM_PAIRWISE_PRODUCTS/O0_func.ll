define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_13 = alloca [8 x i8], align 4
  %iter1 = alloca [12 x i8], align 4
  %_11 = alloca [12 x i8], align 4
  %_10 = alloca [12 x i8], align 4
  %_6 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_4 = alloca [12 x i8], align 4
  %_3 = alloca [12 x i8], align 4
  %sum = alloca [4 x i8], align 4
  store i32 0, ptr %sum, align 4
; call core::ops::range::RangeInclusive<Idx>::new
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hccfa72d4a65c8656E"(ptr sret([12 x i8]) align 4 %_4, i32 1, i32 %n) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0d2ecde97086c03bE"(ptr sret([12 x i8]) align 4 %_3, ptr align 4 %_4) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_3, i64 12, i1 false)
  br label %bb3

bb3:                                              ; preds = %bb10, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %0 = call { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h870c0615d1c6b4c2E"(ptr align 4 %iter) #17
  %1 = extractvalue { i32, i32 } %0, 0
  %2 = extractvalue { i32, i32 } %0, 1
  store i32 %1, ptr %_6, align 4
  %3 = getelementptr inbounds i8, ptr %_6, i64 4
  store i32 %2, ptr %3, align 4
  %4 = load i32, ptr %_6, align 4
  %5 = getelementptr inbounds i8, ptr %_6, i64 4
  %6 = load i32, ptr %5, align 4
  %_8 = zext i32 %4 to i64
  %7 = trunc nuw i64 %_8 to i1
  br i1 %7, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %8 = getelementptr inbounds i8, ptr %_6, i64 4
  %i = load i32, ptr %8, align 4
; call core::ops::range::RangeInclusive<Idx>::new
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hccfa72d4a65c8656E"(ptr sret([12 x i8]) align 4 %_11, i32 %i, i32 %n) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0d2ecde97086c03bE"(ptr sret([12 x i8]) align 4 %_10, ptr align 4 %_11) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter1, ptr align 4 %_10, i64 12, i1 false)
  br label %bb10

bb7:                                              ; preds = %bb3
  %_0 = load i32, ptr %sum, align 4
  ret i32 %_0

bb10:                                             ; preds = %bb14, %bb6
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %9 = call { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h870c0615d1c6b4c2E"(ptr align 4 %iter1) #17
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = extractvalue { i32, i32 } %9, 1
  store i32 %10, ptr %_13, align 4
  %12 = getelementptr inbounds i8, ptr %_13, i64 4
  store i32 %11, ptr %12, align 4
  %13 = load i32, ptr %_13, align 4
  %14 = getelementptr inbounds i8, ptr %_13, i64 4
  %15 = load i32, ptr %14, align 4
  %_15 = zext i32 %13 to i64
  %16 = trunc nuw i64 %_15 to i1
  br i1 %16, label %bb12, label %bb3

bb12:                                             ; preds = %bb10
  %17 = getelementptr inbounds i8, ptr %_13, i64 4
  %j = load i32, ptr %17, align 4
  %_17 = load i32, ptr %sum, align 4
  %18 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i, i32 %j)
  %_19.0 = extractvalue { i32, i1 } %18, 0
  %_19.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_19.1, label %panic, label %bb13

bb13:                                             ; preds = %bb12
  %19 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_17, i32 %_19.0)
  %_20.0 = extractvalue { i32, i1 } %19, 0
  %_20.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_20.1, label %panic2, label %bb14

panic:                                            ; preds = %bb12
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_1f52ea333dda40b80fb1df9a309d15c6) #22
  unreachable

bb14:                                             ; preds = %bb13
  store i32 %_20.0, ptr %sum, align 4
  br label %bb10

panic2:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_fc694ef55fe8d038816930d3f50c9505) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}

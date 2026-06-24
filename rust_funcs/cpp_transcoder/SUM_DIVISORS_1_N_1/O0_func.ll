define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_6 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_4 = alloca [12 x i8], align 4
  %_3 = alloca [12 x i8], align 4
  %sum = alloca [4 x i8], align 4
  store i32 0, ptr %sum, align 4
; call core::ops::range::RangeInclusive<Idx>::new
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h4a4aac4217638461E"(ptr sret([12 x i8]) align 4 %_4, i32 1, i32 %n) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcf1565185a7b5b6aE"(ptr sret([12 x i8]) align 4 %_3, ptr align 4 %_4) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_3, i64 12, i1 false)
  br label %bb3

bb3:                                              ; preds = %bb11, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %0 = call { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h19be8f5374cfb287E"(ptr align 4 %iter) #17
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
  %_12 = icmp eq i32 %i, 0
  br i1 %_12, label %panic, label %bb8

bb7:                                              ; preds = %bb3
  %_0 = load i32, ptr %sum, align 4
  ret i32 %_0

bb8:                                              ; preds = %bb6
  %_13 = icmp eq i32 %i, -1
  %_14 = icmp eq i32 %n, -2147483648
  %_15 = and i1 %_13, %_14
  br i1 %_15, label %panic1, label %bb9

panic:                                            ; preds = %bb6
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_15619c8b2d468dc33475a60a16239e4b) #22
  unreachable

bb9:                                              ; preds = %bb8
  %_11 = sdiv i32 %n, %i
  %9 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_11, i32 %i)
  %_16.0 = extractvalue { i32, i1 } %9, 0
  %_16.1 = extractvalue { i32, i1 } %9, 1
  br i1 %_16.1, label %panic2, label %bb10

panic1:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr align 8 @alloc_15619c8b2d468dc33475a60a16239e4b) #22
  unreachable

bb10:                                             ; preds = %bb9
  %10 = load i32, ptr %sum, align 4
  %11 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %10, i32 %_16.0)
  %_17.0 = extractvalue { i32, i1 } %11, 0
  %_17.1 = extractvalue { i32, i1 } %11, 1
  br i1 %_17.1, label %panic3, label %bb11

panic2:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_15619c8b2d468dc33475a60a16239e4b) #22
  unreachable

bb11:                                             ; preds = %bb10
  store i32 %_17.0, ptr %sum, align 4
  br label %bb3

panic3:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a06ce87e36ef582ac70a3dba379d9b2a) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}

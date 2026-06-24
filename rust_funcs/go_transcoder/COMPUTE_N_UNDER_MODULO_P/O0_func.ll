define i32 @f_gold(i32 %n, i32 %p) unnamed_addr #3 {
start:
  %_8 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_6 = alloca [12 x i8], align 4
  %_5 = alloca [12 x i8], align 4
  %result = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %_3 = icmp sge i32 %n, %p
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  store i32 1, ptr %result, align 4
; call core::ops::range::RangeInclusive<Idx>::new
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h1c2b0d66ce3df3acE"(ptr sret([12 x i8]) align 4 %_6, i32 1, i32 %n) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h69aebeac2bdc45caE"(ptr sret([12 x i8]) align 4 %_5, ptr align 4 %_6) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_5, i64 12, i1 false)
  br label %bb5

bb1:                                              ; preds = %start
  store i32 0, ptr %_0, align 4
  br label %bb13

bb5:                                              ; preds = %bb12, %bb2
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %0 = call { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h6ac27a391fbfe57fE"(ptr align 4 %iter) #17
  %1 = extractvalue { i32, i32 } %0, 0
  %2 = extractvalue { i32, i32 } %0, 1
  store i32 %1, ptr %_8, align 4
  %3 = getelementptr inbounds i8, ptr %_8, i64 4
  store i32 %2, ptr %3, align 4
  %4 = load i32, ptr %_8, align 4
  %5 = getelementptr inbounds i8, ptr %_8, i64 4
  %6 = load i32, ptr %5, align 4
  %_10 = zext i32 %4 to i64
  %7 = trunc nuw i64 %_10 to i1
  br i1 %7, label %bb8, label %bb9

bb8:                                              ; preds = %bb5
  %8 = getelementptr inbounds i8, ptr %_8, i64 4
  %i = load i32, ptr %8, align 4
  %_13 = load i32, ptr %result, align 4
  %9 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_13, i32 %i)
  %_14.0 = extractvalue { i32, i1 } %9, 0
  %_14.1 = extractvalue { i32, i1 } %9, 1
  br i1 %_14.1, label %panic, label %bb10

bb9:                                              ; preds = %bb5
  %10 = load i32, ptr %result, align 4
  store i32 %10, ptr %_0, align 4
  br label %bb13

bb13:                                             ; preds = %bb1, %bb9
  %11 = load i32, ptr %_0, align 4
  ret i32 %11

bb10:                                             ; preds = %bb8
  %_15 = icmp eq i32 %p, 0
  br i1 %_15, label %panic1, label %bb11

panic:                                            ; preds = %bb8
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_74c80af364646b794137150c39f234a2) #22
  unreachable

bb11:                                             ; preds = %bb10
  %_16 = icmp eq i32 %p, -1
  %_17 = icmp eq i32 %_14.0, -2147483648
  %_18 = and i1 %_16, %_17
  br i1 %_18, label %panic2, label %bb12

panic1:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_74c80af364646b794137150c39f234a2) #22
  unreachable

bb12:                                             ; preds = %bb11
  %12 = srem i32 %_14.0, %p
  store i32 %12, ptr %result, align 4
  br label %bb5

panic2:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_74c80af364646b794137150c39f234a2) #22
  unreachable

bb7:                                              ; No predecessors!
  unreachable
}

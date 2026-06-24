define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_9 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_7 = alloca [12 x i8], align 4
  %_6 = alloca [12 x i8], align 4
  %p_next = alloca [4 x i8], align 4
  %p_curr = alloca [4 x i8], align 4
  %p_prev = alloca [4 x i8], align 4
  %p_prev_prev = alloca [4 x i8], align 4
  store i32 1, ptr %p_prev_prev, align 4
  store i32 1, ptr %p_prev, align 4
  store i32 1, ptr %p_curr, align 4
  store i32 1, ptr %p_next, align 4
; call core::ops::range::RangeInclusive<Idx>::new
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hb98a0e9396482e14E"(ptr sret([12 x i8]) align 4 %_7, i32 3, i32 %n) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h3a35cc714b7dba07E"(ptr sret([12 x i8]) align 4 %_6, ptr align 4 %_7) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_6, i64 12, i1 false)
  br label %bb3

bb3:                                              ; preds = %bb8, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %0 = call { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h3d4bdcb4c6bce408E"(ptr align 4 %iter) #17
  %1 = extractvalue { i32, i32 } %0, 0
  %2 = extractvalue { i32, i32 } %0, 1
  store i32 %1, ptr %_9, align 4
  %3 = getelementptr inbounds i8, ptr %_9, i64 4
  store i32 %2, ptr %3, align 4
  %4 = load i32, ptr %_9, align 4
  %5 = getelementptr inbounds i8, ptr %_9, i64 4
  %6 = load i32, ptr %5, align 4
  %_11 = zext i32 %4 to i64
  %7 = trunc nuw i64 %_11 to i1
  br i1 %7, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %8 = getelementptr inbounds i8, ptr %_9, i64 4
  %i = load i32, ptr %8, align 4
  %_13 = load i32, ptr %p_prev_prev, align 4
  %_14 = load i32, ptr %p_prev, align 4
  %9 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_13, i32 %_14)
  %_15.0 = extractvalue { i32, i1 } %9, 0
  %_15.1 = extractvalue { i32, i1 } %9, 1
  br i1 %_15.1, label %panic, label %bb8

bb7:                                              ; preds = %bb3
  %_0 = load i32, ptr %p_next, align 4
  ret i32 %_0

bb8:                                              ; preds = %bb6
  store i32 %_15.0, ptr %p_next, align 4
  %_16 = load i32, ptr %p_prev, align 4
  store i32 %_16, ptr %p_prev_prev, align 4
  %_17 = load i32, ptr %p_curr, align 4
  store i32 %_17, ptr %p_prev, align 4
  %_18 = load i32, ptr %p_next, align 4
  store i32 %_18, ptr %p_curr, align 4
  br label %bb3

panic:                                            ; preds = %bb6
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_4cfe2641b705b7b3e03e7e6f6e74015c) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}

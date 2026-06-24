define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_8 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_6 = alloca [12 x i8], align 4
  %_5 = alloca [12 x i8], align 4
  %count_s = alloca [4 x i8], align 4
  %count_b = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %_2 = icmp eq i32 %n, 1
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  store i32 1, ptr %count_b, align 4
  store i32 1, ptr %count_s, align 4
; call core::ops::range::RangeInclusive<Idx>::new
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17h0ba224ae8275be95E"(ptr sret([12 x i8]) align 4 %_6, i32 2, i32 %n) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hbc6f4ac807a71ca9E"(ptr sret([12 x i8]) align 4 %_5, ptr align 4 %_6) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_5, i64 12, i1 false)
  br label %bb5

bb1:                                              ; preds = %start
  store i32 4, ptr %_0, align 4
  br label %bb13

bb5:                                              ; preds = %bb10, %bb2
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %0 = call { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h8b0078daa5a2c16fE"(ptr align 4 %iter) #17
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
  %prev_count_b = load i32, ptr %count_b, align 4
  %prev_count_s = load i32, ptr %count_s, align 4
  %9 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %prev_count_b, i32 %prev_count_s)
  %_14.0 = extractvalue { i32, i1 } %9, 0
  %_14.1 = extractvalue { i32, i1 } %9, 1
  br i1 %_14.1, label %panic2, label %bb10

bb9:                                              ; preds = %bb5
  %_16 = load i32, ptr %count_s, align 4
  %_17 = load i32, ptr %count_b, align 4
  %10 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_16, i32 %_17)
  %_18.0 = extractvalue { i32, i1 } %10, 0
  %_18.1 = extractvalue { i32, i1 } %10, 1
  br i1 %_18.1, label %panic, label %bb11

bb11:                                             ; preds = %bb9
  %11 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_18.0, i32 %_18.0)
  %_19.0 = extractvalue { i32, i1 } %11, 0
  %_19.1 = extractvalue { i32, i1 } %11, 1
  br i1 %_19.1, label %panic1, label %bb12

panic:                                            ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_ad340d91f1f6c258b42e4a118acd1e55) #22
  unreachable

bb12:                                             ; preds = %bb11
  store i32 %_19.0, ptr %_0, align 4
  br label %bb13

panic1:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_1e5c790ac2fa8fb620068f79c18b85a5) #22
  unreachable

bb13:                                             ; preds = %bb1, %bb12
  %12 = load i32, ptr %_0, align 4
  ret i32 %12

bb10:                                             ; preds = %bb8
  store i32 %_14.0, ptr %count_s, align 4
  store i32 %prev_count_s, ptr %count_b, align 4
  br label %bb5

panic2:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2e71de449af18e6d376612a06478a578) #22
  unreachable

bb7:                                              ; No predecessors!
  unreachable
}

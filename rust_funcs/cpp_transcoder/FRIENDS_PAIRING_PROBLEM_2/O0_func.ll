define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_9 = alloca [8 x i8], align 4
  %iter = alloca [12 x i8], align 4
  %_7 = alloca [12 x i8], align 4
  %_6 = alloca [12 x i8], align 4
  %c = alloca [4 x i8], align 4
  %b = alloca [4 x i8], align 4
  %a = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  store i32 1, ptr %a, align 4
  store i32 2, ptr %b, align 4
  store i32 0, ptr %c, align 4
  %_5 = icmp sle i32 %n, 2
  br i1 %_5, label %bb1, label %bb2

bb2:                                              ; preds = %start
; call core::ops::range::RangeInclusive<Idx>::new
  call void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hfa7296a261cdd12eE"(ptr sret([12 x i8]) align 4 %_7, i32 3, i32 %n) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h61142dff72c5cf0aE"(ptr sret([12 x i8]) align 4 %_6, ptr align 4 %_7) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %iter, ptr align 4 %_6, i64 12, i1 false)
  br label %bb5

bb1:                                              ; preds = %start
  store i32 %n, ptr %_0, align 4
  br label %bb13

bb5:                                              ; preds = %bb12, %bb2
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %0 = call { i32, i32 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hea1d573433fd1598E"(ptr align 4 %iter) #17
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
  br i1 %7, label %bb8, label %bb9

bb8:                                              ; preds = %bb5
  %8 = getelementptr inbounds i8, ptr %_9, i64 4
  %i = load i32, ptr %8, align 4
  %_13 = load i32, ptr %b, align 4
  %9 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i, i32 1)
  %_16.0 = extractvalue { i32, i1 } %9, 0
  %_16.1 = extractvalue { i32, i1 } %9, 1
  br i1 %_16.1, label %panic, label %bb10

bb9:                                              ; preds = %bb5
  %10 = load i32, ptr %c, align 4
  store i32 %10, ptr %_0, align 4
  br label %bb13

bb13:                                             ; preds = %bb1, %bb9
  %11 = load i32, ptr %_0, align 4
  ret i32 %11

bb10:                                             ; preds = %bb8
  %_17 = load i32, ptr %a, align 4
  %12 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_16.0, i32 %_17)
  %_18.0 = extractvalue { i32, i1 } %12, 0
  %_18.1 = extractvalue { i32, i1 } %12, 1
  br i1 %_18.1, label %panic1, label %bb11

panic:                                            ; preds = %bb8
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_6b05d49a79772e36c17ec18b0eb80a40) #22
  unreachable

bb11:                                             ; preds = %bb10
  %13 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_13, i32 %_18.0)
  %_19.0 = extractvalue { i32, i1 } %13, 0
  %_19.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_19.1, label %panic2, label %bb12

panic1:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_6b05d49a79772e36c17ec18b0eb80a40) #22
  unreachable

bb12:                                             ; preds = %bb11
  store i32 %_19.0, ptr %c, align 4
  %_20 = load i32, ptr %b, align 4
  store i32 %_20, ptr %a, align 4
  %_21 = load i32, ptr %c, align 4
  store i32 %_21, ptr %b, align 4
  br label %bb5

panic2:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_fec660dfebd5699266aca3e55cd30347) #22
  unreachable

bb7:                                              ; No predecessors!
  unreachable
}

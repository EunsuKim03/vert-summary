define i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %n) unnamed_addr #3 {
start:
  %_16 = alloca [8 x i8], align 4
  %iter1 = alloca [8 x i8], align 4
  %_7 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %min_xor = alloca [4 x i8], align 4
  %0 = call i32 @llvm.fptosi.sat.i32.f32(float 0x47EFFFFFE0000000)
  store i32 %0, ptr %min_xor, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %1 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9922e060448e99b0E"(i32 0, i32 %n) #20
  %_4.0 = extractvalue { i32, i32 } %1, 0
  %_4.1 = extractvalue { i32, i32 } %1, 1
  store i32 %_4.0, ptr %iter, align 4
  %2 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_4.1, ptr %2, align 4
  br label %bb2

bb2:                                              ; preds = %bb9, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %3 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hf41d6e8fddfb9360E"(ptr align 4 %iter) #20
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = extractvalue { i32, i32 } %3, 1
  store i32 %4, ptr %_7, align 4
  %6 = getelementptr inbounds i8, ptr %_7, i64 4
  store i32 %5, ptr %6, align 4
  %7 = load i32, ptr %_7, align 4
  %8 = getelementptr inbounds i8, ptr %_7, i64 4
  %9 = load i32, ptr %8, align 4
  %_9 = zext i32 %7 to i64
  %10 = trunc nuw i64 %_9 to i1
  br i1 %10, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %11 = getelementptr inbounds i8, ptr %_7, i64 4
  %i = load i32, ptr %11, align 4
  %12 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i, i32 1)
  %_14.0 = extractvalue { i32, i1 } %12, 0
  %_14.1 = extractvalue { i32, i1 } %12, 1
  br i1 %_14.1, label %panic, label %bb7

bb6:                                              ; preds = %bb2
  %_0 = load i32, ptr %min_xor, align 4
  ret i32 %_0

bb7:                                              ; preds = %bb5
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %13 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9922e060448e99b0E"(i32 %_14.0, i32 %n) #20
  %_11.0 = extractvalue { i32, i32 } %13, 0
  %_11.1 = extractvalue { i32, i32 } %13, 1
  store i32 %_11.0, ptr %iter1, align 4
  %14 = getelementptr inbounds i8, ptr %iter1, i64 4
  store i32 %_11.1, ptr %14, align 4
  br label %bb9

panic:                                            ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0e4ad5a21d47b4ed4a83f768496aca09) #22
  unreachable

bb9:                                              ; preds = %bb13, %bb7
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %15 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hf41d6e8fddfb9360E"(ptr align 4 %iter1) #20
  %16 = extractvalue { i32, i32 } %15, 0
  %17 = extractvalue { i32, i32 } %15, 1
  store i32 %16, ptr %_16, align 4
  %18 = getelementptr inbounds i8, ptr %_16, i64 4
  store i32 %17, ptr %18, align 4
  %19 = load i32, ptr %_16, align 4
  %20 = getelementptr inbounds i8, ptr %_16, i64 4
  %21 = load i32, ptr %20, align 4
  %_18 = zext i32 %19 to i64
  %22 = trunc nuw i64 %_18 to i1
  br i1 %22, label %bb11, label %bb2

bb11:                                             ; preds = %bb9
  %23 = getelementptr inbounds i8, ptr %_16, i64 4
  %j = load i32, ptr %23, align 4
  %_21 = load i32, ptr %min_xor, align 4
  %_24 = sext i32 %i to i64
  %_27 = icmp ult i64 %_24, %arr.1
  br i1 %_27, label %bb12, label %panic2

bb12:                                             ; preds = %bb11
  %24 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_24
  %_23 = load i32, ptr %24, align 4
  %_29 = sext i32 %j to i64
  %_32 = icmp ult i64 %_29, %arr.1
  br i1 %_32, label %bb13, label %panic3

panic2:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_24, i64 %arr.1, ptr align 8 @alloc_ba36419ccd41c001693638b9715c19b0) #22
  unreachable

bb13:                                             ; preds = %bb12
  %25 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_29
  %_28 = load i32, ptr %25, align 4
  %_22 = xor i32 %_23, %_28
; call core::cmp::Ord::min
  %_20 = call i32 @_ZN4core3cmp3Ord3min17hd2643ca0b94537cbE(i32 %_21, i32 %_22) #20
  store i32 %_20, ptr %min_xor, align 4
  br label %bb9

panic3:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_29, i64 %arr.1, ptr align 8 @alloc_be235631f768889b2b828e35d18ad72f) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

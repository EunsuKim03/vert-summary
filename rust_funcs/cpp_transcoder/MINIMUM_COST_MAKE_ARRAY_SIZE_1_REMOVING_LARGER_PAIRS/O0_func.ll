define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_10 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %min = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %a = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 8 %1, i64 8, i1 false)
  %2 = getelementptr inbounds nuw i32, ptr %a, i64 0
  %3 = load i32, ptr %2, align 4
  store i32 %3, ptr %min, align 4
  %_8 = sext i32 %n to i64
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %4 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hfe6c740796994fefE"(i64 1, i64 %_8) #20
  %_6.0 = extractvalue { i64, i64 } %4, 0
  %_6.1 = extractvalue { i64, i64 } %4, 1
  store i64 %_6.0, ptr %iter, align 8
  %5 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_6.1, ptr %5, align 8
  br label %bb3

bb3:                                              ; preds = %bb10, %bb8, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %6 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h458a83c16ae06fc1E"(ptr align 8 %iter) #20
  %7 = extractvalue { i64, i64 } %6, 0
  %8 = extractvalue { i64, i64 } %6, 1
  store i64 %7, ptr %_10, align 8
  %9 = getelementptr inbounds i8, ptr %_10, i64 8
  store i64 %8, ptr %9, align 8
  %_12 = load i64, ptr %_10, align 8
  %10 = getelementptr inbounds i8, ptr %_10, i64 8
  %11 = load i64, ptr %10, align 8
  %12 = trunc nuw i64 %_12 to i1
  br i1 %12, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %13 = getelementptr inbounds i8, ptr %_10, i64 8
  %i = load i64, ptr %13, align 8
  %_16 = icmp ult i64 %i, 2
  br i1 %_16, label %bb8, label %panic2

bb7:                                              ; preds = %bb3
  %14 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 1)
  %_21.0 = extractvalue { i32, i1 } %14, 0
  %_21.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_21.1, label %panic, label %bb11

bb11:                                             ; preds = %bb7
  %_22 = load i32, ptr %min, align 4
  %15 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_21.0, i32 %_22)
  %_23.0 = extractvalue { i32, i1 } %15, 0
  %_23.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_23.1, label %panic1, label %bb12

panic:                                            ; preds = %bb7
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_efb45e77bd076e6a048c40031a5dada2) #22
  unreachable

bb12:                                             ; preds = %bb11
  ret i32 %_23.0

panic1:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_efb45e77bd076e6a048c40031a5dada2) #22
  unreachable

bb8:                                              ; preds = %bb6
  %16 = getelementptr inbounds nuw i32, ptr %a, i64 %i
  %_15 = load i32, ptr %16, align 4
  %_17 = load i32, ptr %min, align 4
  %_14 = icmp slt i32 %_15, %_17
  br i1 %_14, label %bb9, label %bb3

panic2:                                           ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_5d09ff184d6baf32ae85f72034c846f9) #22
  unreachable

bb9:                                              ; preds = %bb8
  %_19 = icmp ult i64 %i, 2
  br i1 %_19, label %bb10, label %panic3

bb10:                                             ; preds = %bb9
  %17 = getelementptr inbounds nuw i32, ptr %a, i64 %i
  %_18 = load i32, ptr %17, align 4
  store i32 %_18, ptr %min, align 4
  br label %bb3

panic3:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_9f1cb0a6a7933abdbd08c9905a23e4cc) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}

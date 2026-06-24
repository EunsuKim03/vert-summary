define i32 @f_gold(i64 %0, i32 %n, i32 %idx) unnamed_addr #3 {
start:
  %_8 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %result = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store i32 0, ptr %result, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hbe4ef52d601c38f9E"(i32 0, i32 %n) #20
  %_5.0 = extractvalue { i32, i32 } %2, 0
  %_5.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_5.0, ptr %iter, align 4
  %3 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_5.1, ptr %3, align 4
  br label %bb2

bb2:                                              ; preds = %bb16, %bb14, %bb13, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hc2fa61932dcfc54dE"(ptr align 4 %iter) #20
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = extractvalue { i32, i32 } %4, 1
  store i32 %5, ptr %_8, align 4
  %7 = getelementptr inbounds i8, ptr %_8, i64 4
  store i32 %6, ptr %7, align 4
  %8 = load i32, ptr %_8, align 4
  %9 = getelementptr inbounds i8, ptr %_8, i64 4
  %10 = load i32, ptr %9, align 4
  %_10 = zext i32 %8 to i64
  %11 = trunc nuw i64 %_10 to i1
  br i1 %11, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %12 = getelementptr inbounds i8, ptr %_8, i64 4
  %i = load i32, ptr %12, align 4
  %_14 = sext i32 %i to i64
  %_15 = icmp ult i64 %_14, 2
  br i1 %_15, label %bb7, label %panic

bb6:                                              ; preds = %bb2
  %_0 = load i32, ptr %result, align 4
  ret i32 %_0

bb7:                                              ; preds = %bb5
  %13 = getelementptr inbounds nuw i32, ptr %arr, i64 %_14
  %_13 = load i32, ptr %13, align 4
  %_17 = sext i32 %idx to i64
  %_18 = icmp ult i64 %_17, 2
  br i1 %_18, label %bb8, label %panic1

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_14, i64 2, ptr align 8 @alloc_af47ef0b4ebb391de5dae516f0aecd2e) #22
  unreachable

bb8:                                              ; preds = %bb7
  %14 = getelementptr inbounds nuw i32, ptr %arr, i64 %_17
  %_16 = load i32, ptr %14, align 4
  %_12 = icmp slt i32 %_13, %_16
  br i1 %_12, label %bb9, label %bb11

panic1:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_17, i64 2, ptr align 8 @alloc_b315721cdf41a289843251a92add1627) #22
  unreachable

bb11:                                             ; preds = %bb10, %bb8
  %_22 = sext i32 %i to i64
  %_23 = icmp ult i64 %_22, 2
  br i1 %_23, label %bb12, label %panic3

bb9:                                              ; preds = %bb8
  %15 = load i32, ptr %result, align 4
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %15, i32 1)
  %_19.0 = extractvalue { i32, i1 } %16, 0
  %_19.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_19.1, label %panic2, label %bb10

bb10:                                             ; preds = %bb9
  store i32 %_19.0, ptr %result, align 4
  br label %bb11

panic2:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c23c08ed7449b3fc410fad1d7aa3b909) #22
  unreachable

bb12:                                             ; preds = %bb11
  %17 = getelementptr inbounds nuw i32, ptr %arr, i64 %_22
  %_21 = load i32, ptr %17, align 4
  %_25 = sext i32 %idx to i64
  %_26 = icmp ult i64 %_25, 2
  br i1 %_26, label %bb13, label %panic4

panic3:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_22, i64 2, ptr align 8 @alloc_7f4250fa954f594417ea5bcd3a09d727) #22
  unreachable

bb13:                                             ; preds = %bb12
  %18 = getelementptr inbounds nuw i32, ptr %arr, i64 %_25
  %_24 = load i32, ptr %18, align 4
  %_20 = icmp eq i32 %_21, %_24
  br i1 %_20, label %bb14, label %bb2

panic4:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_25, i64 2, ptr align 8 @alloc_cd49ace8f7cc73281d316adcc234377a) #22
  unreachable

bb14:                                             ; preds = %bb13
  %_27 = icmp slt i32 %i, %idx
  br i1 %_27, label %bb15, label %bb2

bb15:                                             ; preds = %bb14
  %19 = load i32, ptr %result, align 4
  %20 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %19, i32 1)
  %_28.0 = extractvalue { i32, i1 } %20, 0
  %_28.1 = extractvalue { i32, i1 } %20, 1
  br i1 %_28.1, label %panic5, label %bb16

bb16:                                             ; preds = %bb15
  store i32 %_28.0, ptr %result, align 4
  br label %bb2

panic5:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a94b9095787497600f13a0aad5bb62e4) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

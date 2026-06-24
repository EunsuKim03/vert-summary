define i32 @f_gold(i64 %0, i32 %n, i32 %k) unnamed_addr #3 {
start:
  %_11 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %max_ending_here = alloca [4 x i8], align 4
  %max_so_far = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %a = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 8 %1, i64 8, i1 false)
  store i32 -2147483648, ptr %max_so_far, align 4
  store i32 0, ptr %max_ending_here, align 4
  %2 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %n, i32 %k)
  %_9.0 = extractvalue { i32, i1 } %2, 0
  %_9.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_9.1, label %panic, label %bb1

bb1:                                              ; preds = %start
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %3 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h92178e892dc2c014E"(i32 0, i32 %_9.0) #20
  %_6.0 = extractvalue { i32, i32 } %3, 0
  %_6.1 = extractvalue { i32, i32 } %3, 1
  store i32 %_6.0, ptr %iter, align 4
  %4 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_6.1, ptr %4, align 4
  br label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_aeb1122cef58ef060508b175aaf7dcd2) #22
  unreachable

bb3:                                              ; preds = %bb12, %bb10, %bb1
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %5 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h53d7b0c4bac913c4E"(ptr align 4 %iter) #20
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = extractvalue { i32, i32 } %5, 1
  store i32 %6, ptr %_11, align 4
  %8 = getelementptr inbounds i8, ptr %_11, i64 4
  store i32 %7, ptr %8, align 4
  %9 = load i32, ptr %_11, align 4
  %10 = getelementptr inbounds i8, ptr %_11, i64 4
  %11 = load i32, ptr %10, align 4
  %_13 = zext i32 %9 to i64
  %12 = trunc nuw i64 %_13 to i1
  br i1 %12, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %13 = getelementptr inbounds i8, ptr %_11, i64 4
  %i = load i32, ptr %13, align 4
  %_15 = load i32, ptr %max_ending_here, align 4
  %_18 = sext i32 %i to i64
  %_19 = sext i32 %n to i64
  %_20 = icmp eq i64 %_19, 0
  br i1 %_20, label %panic1, label %bb8

bb7:                                              ; preds = %bb3
  %_0 = load i32, ptr %max_so_far, align 4
  ret i32 %_0

bb8:                                              ; preds = %bb6
  %_17 = urem i64 %_18, %_19
  %_21 = icmp ult i64 %_17, 2
  br i1 %_21, label %bb9, label %panic2

panic1:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_b83fbbd01d250872c36186f354e5ffd8) #22
  unreachable

bb9:                                              ; preds = %bb8
  %14 = getelementptr inbounds nuw i32, ptr %a, i64 %_17
  %_16 = load i32, ptr %14, align 4
  %15 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_15, i32 %_16)
  %_22.0 = extractvalue { i32, i1 } %15, 0
  %_22.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_22.1, label %panic3, label %bb10

panic2:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_17, i64 2, ptr align 8 @alloc_fb8c3508cba01c1ede35104eaf311709) #22
  unreachable

bb10:                                             ; preds = %bb9
  store i32 %_22.0, ptr %max_ending_here, align 4
  %_24 = load i32, ptr %max_so_far, align 4
  %_25 = load i32, ptr %max_ending_here, align 4
; call core::cmp::Ord::max
  %_23 = call i32 @_ZN4core3cmp3Ord3max17h654b1a6ba24d3453E(i32 %_24, i32 %_25) #20
  store i32 %_23, ptr %max_so_far, align 4
  %_27 = load i32, ptr %max_ending_here, align 4
  %_26 = icmp slt i32 %_27, 0
  br i1 %_26, label %bb12, label %bb3

panic3:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_92b5bd97834732dc51ba77f54a45804a) #22
  unreachable

bb12:                                             ; preds = %bb10
  store i32 0, ptr %max_ending_here, align 4
  br label %bb3

bb5:                                              ; No predecessors!
  unreachable
}

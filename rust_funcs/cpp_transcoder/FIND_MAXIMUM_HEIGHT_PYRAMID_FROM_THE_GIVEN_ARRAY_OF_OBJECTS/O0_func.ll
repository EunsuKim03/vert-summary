define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_16 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %curr_width = alloca [4 x i8], align 4
  %curr_count = alloca [4 x i8], align 4
  %prev_count = alloca [4 x i8], align 4
  %prev_width = alloca [4 x i8], align 4
  %ans = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %boxes = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %boxes, ptr align 8 %1, i64 8, i1 false)
; call alloc::slice::<impl [T]>::sort
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hfb2e4614572df353E"(ptr align 4 %boxes, i64 2) #20
  store i32 1, ptr %ans, align 4
  %2 = getelementptr inbounds nuw i32, ptr %boxes, i64 0
  %3 = load i32, ptr %2, align 4
  store i32 %3, ptr %prev_width, align 4
  store i32 1, ptr %prev_count, align 4
  store i32 0, ptr %curr_count, align 4
  store i32 0, ptr %curr_width, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %4 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hed1c0376f0181050E"(i32 1, i32 %n) #20
  %_13.0 = extractvalue { i32, i32 } %4, 0
  %_13.1 = extractvalue { i32, i32 } %4, 1
  store i32 %_13.0, ptr %iter, align 4
  %5 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_13.1, ptr %5, align 4
  br label %bb4

bb4:                                              ; preds = %bb14, %bb12, %bb11, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %6 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h6f2d3a826a94c0c7E"(ptr align 4 %iter) #20
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = extractvalue { i32, i32 } %6, 1
  store i32 %7, ptr %_16, align 4
  %9 = getelementptr inbounds i8, ptr %_16, i64 4
  store i32 %8, ptr %9, align 4
  %10 = load i32, ptr %_16, align 4
  %11 = getelementptr inbounds i8, ptr %_16, i64 4
  %12 = load i32, ptr %11, align 4
  %_18 = zext i32 %10 to i64
  %13 = trunc nuw i64 %_18 to i1
  br i1 %13, label %bb7, label %bb8

bb7:                                              ; preds = %bb4
  %14 = getelementptr inbounds i8, ptr %_16, i64 4
  %i = load i32, ptr %14, align 4
  %_21 = sext i32 %i to i64
  %_22 = icmp ult i64 %_21, 2
  br i1 %_22, label %bb9, label %panic

bb8:                                              ; preds = %bb4
  %_0 = load i32, ptr %ans, align 4
  ret i32 %_0

bb9:                                              ; preds = %bb7
  %15 = getelementptr inbounds nuw i32, ptr %boxes, i64 %_21
  %_20 = load i32, ptr %15, align 4
  %16 = load i32, ptr %curr_width, align 4
  %17 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %16, i32 %_20)
  %_23.0 = extractvalue { i32, i1 } %17, 0
  %_23.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_23.1, label %panic1, label %bb10

panic:                                            ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_21, i64 2, ptr align 8 @alloc_9714be769f0c5a2c9b41c7db778fec35) #22
  unreachable

bb10:                                             ; preds = %bb9
  store i32 %_23.0, ptr %curr_width, align 4
  %18 = load i32, ptr %curr_count, align 4
  %19 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %18, i32 1)
  %_24.0 = extractvalue { i32, i1 } %19, 0
  %_24.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_24.1, label %panic2, label %bb11

panic1:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_577f2cc0f5862de178086fd665ed14d9) #22
  unreachable

bb11:                                             ; preds = %bb10
  store i32 %_24.0, ptr %curr_count, align 4
  %_26 = load i32, ptr %curr_width, align 4
  %_27 = load i32, ptr %prev_width, align 4
  %_25 = icmp sgt i32 %_26, %_27
  br i1 %_25, label %bb12, label %bb4

panic2:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a60b66f8de4cb83449a6cfece214c2a5) #22
  unreachable

bb12:                                             ; preds = %bb11
  %_29 = load i32, ptr %curr_count, align 4
  %_30 = load i32, ptr %prev_count, align 4
  %_28 = icmp sgt i32 %_29, %_30
  br i1 %_28, label %bb13, label %bb4

bb13:                                             ; preds = %bb12
  %_31 = load i32, ptr %curr_width, align 4
  store i32 %_31, ptr %prev_width, align 4
  %_32 = load i32, ptr %curr_count, align 4
  store i32 %_32, ptr %prev_count, align 4
  store i32 0, ptr %curr_count, align 4
  store i32 0, ptr %curr_width, align 4
  %20 = load i32, ptr %ans, align 4
  %21 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %20, i32 1)
  %_33.0 = extractvalue { i32, i1 } %21, 0
  %_33.1 = extractvalue { i32, i1 } %21, 1
  br i1 %_33.1, label %panic3, label %bb14

bb14:                                             ; preds = %bb13
  store i32 %_33.0, ptr %ans, align 4
  br label %bb4

panic3:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_7e58172944c360991e1e4edcc801c1b2) #22
  unreachable

bb6:                                              ; No predecessors!
  unreachable
}

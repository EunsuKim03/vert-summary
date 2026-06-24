define i32 @f_gold(ptr align 4 %s.0, i64 %s.1, i32 %n) unnamed_addr #3 {
start:
  %_8 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %invalid_close_braces = alloca [4 x i8], align 4
  %invalid_open_braces = alloca [4 x i8], align 4
  store i32 0, ptr %invalid_open_braces, align 4
  store i32 0, ptr %invalid_close_braces, align 4
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h947614b27026738eE"(i32 0, i32 %n) #20
  %_5.0 = extractvalue { i32, i32 } %0, 0
  %_5.1 = extractvalue { i32, i32 } %0, 1
  store i32 %_5.0, ptr %iter, align 4
  %1 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_5.1, ptr %1, align 4
  br label %bb2

bb2:                                              ; preds = %bb9, %bb12, %bb14, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h2230fc4142ac27a6E"(ptr align 4 %iter) #20
  %3 = extractvalue { i32, i32 } %2, 0
  %4 = extractvalue { i32, i32 } %2, 1
  store i32 %3, ptr %_8, align 4
  %5 = getelementptr inbounds i8, ptr %_8, i64 4
  store i32 %4, ptr %5, align 4
  %6 = load i32, ptr %_8, align 4
  %7 = getelementptr inbounds i8, ptr %_8, i64 4
  %8 = load i32, ptr %7, align 4
  %_10 = zext i32 %6 to i64
  %9 = trunc nuw i64 %_10 to i1
  br i1 %9, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %10 = getelementptr inbounds i8, ptr %_8, i64 4
  %i = load i32, ptr %10, align 4
  %_14 = sext i32 %i to i64
  %_16 = icmp ult i64 %_14, %s.1
  br i1 %_16, label %bb7, label %panic2

bb6:                                              ; preds = %bb2
  %_23 = load i32, ptr %invalid_open_braces, align 4
  %_24 = load i32, ptr %invalid_close_braces, align 4
  %11 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_23, i32 %_24)
  %_25.0 = extractvalue { i32, i1 } %11, 0
  %_25.1 = extractvalue { i32, i1 } %11, 1
  br i1 %_25.1, label %panic, label %bb15

bb15:                                             ; preds = %bb6
  %12 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %n, i32 %_25.0)
  %_26.0 = extractvalue { i32, i1 } %12, 0
  %_26.1 = extractvalue { i32, i1 } %12, 1
  br i1 %_26.1, label %panic1, label %bb16

panic:                                            ; preds = %bb6
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e99efb0f07da05c79732afeca639e0ee) #22
  unreachable

bb16:                                             ; preds = %bb15
  ret i32 %_26.0

panic1:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_d63a434a0eb5e7d7c8f3b2a0565e46a6) #22
  unreachable

bb7:                                              ; preds = %bb5
  %13 = getelementptr inbounds nuw i32, ptr %s.0, i64 %_14
  %_13 = load i32, ptr %13, align 4
  %_12 = icmp eq i32 %_13, 40
  br i1 %_12, label %bb8, label %bb10

panic2:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_14, i64 %s.1, ptr align 8 @alloc_1e79f9fbdeb8616ee8fffed9c1f21f00) #22
  unreachable

bb10:                                             ; preds = %bb7
  %_19 = load i32, ptr %invalid_open_braces, align 4
  %_18 = icmp eq i32 %_19, 0
  br i1 %_18, label %bb11, label %bb13

bb8:                                              ; preds = %bb7
  %14 = load i32, ptr %invalid_open_braces, align 4
  %15 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %14, i32 1)
  %_17.0 = extractvalue { i32, i1 } %15, 0
  %_17.1 = extractvalue { i32, i1 } %15, 1
  br i1 %_17.1, label %panic5, label %bb9

bb13:                                             ; preds = %bb10
  %16 = load i32, ptr %invalid_open_braces, align 4
  %17 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %16, i32 1)
  %_21.0 = extractvalue { i32, i1 } %17, 0
  %_21.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_21.1, label %panic3, label %bb14

bb11:                                             ; preds = %bb10
  %18 = load i32, ptr %invalid_close_braces, align 4
  %19 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %18, i32 1)
  %_20.0 = extractvalue { i32, i1 } %19, 0
  %_20.1 = extractvalue { i32, i1 } %19, 1
  br i1 %_20.1, label %panic4, label %bb12

bb14:                                             ; preds = %bb13
  store i32 %_21.0, ptr %invalid_open_braces, align 4
  br label %bb2

panic3:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_ad7a0370742ec917d6d16e910a2f489f) #22
  unreachable

bb12:                                             ; preds = %bb11
  store i32 %_20.0, ptr %invalid_close_braces, align 4
  br label %bb2

panic4:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_56a89a0349063b1ae9d4f8c448e7308c) #22
  unreachable

bb9:                                              ; preds = %bb8
  store i32 %_17.0, ptr %invalid_open_braces, align 4
  br label %bb2

panic5:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c59b0d9e4a1887f3bbb1b0d09adf94c8) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}

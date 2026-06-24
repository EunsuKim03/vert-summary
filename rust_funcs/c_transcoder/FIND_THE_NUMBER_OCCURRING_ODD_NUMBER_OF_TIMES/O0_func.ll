define i32 @f_gold(i64 %0, i32 %arr_size) unnamed_addr #3 {
start:
  %_16 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %count = alloca [4 x i8], align 4
  %_7 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  %_5 = sext i32 %arr_size to i64
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb306f90c9ab51eb0E"(i64 0, i64 %_5) #20
  %_3.0 = extractvalue { i64, i64 } %2, 0
  %_3.1 = extractvalue { i64, i64 } %2, 1
  store i64 %_3.0, ptr %iter, align 8
  %3 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_3.1, ptr %3, align 8
  br label %bb2

bb2:                                              ; preds = %bb17, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h40598a3aa449bd32E"(ptr align 8 %iter) #20
  %5 = extractvalue { i64, i64 } %4, 0
  %6 = extractvalue { i64, i64 } %4, 1
  store i64 %5, ptr %_7, align 8
  %7 = getelementptr inbounds i8, ptr %_7, i64 8
  store i64 %6, ptr %7, align 8
  %_9 = load i64, ptr %_7, align 8
  %8 = getelementptr inbounds i8, ptr %_7, i64 8
  %9 = load i64, ptr %8, align 8
  %10 = trunc nuw i64 %_9 to i1
  br i1 %10, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %11 = getelementptr inbounds i8, ptr %_7, i64 8
  %i = load i64, ptr %11, align 8
  store i32 0, ptr %count, align 4
  %_14 = sext i32 %arr_size to i64
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %12 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb306f90c9ab51eb0E"(i64 0, i64 %_14) #20
  %_12.0 = extractvalue { i64, i64 } %12, 0
  %_12.1 = extractvalue { i64, i64 } %12, 1
  store i64 %_12.0, ptr %iter1, align 8
  %13 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %_12.1, ptr %13, align 8
  br label %bb8

bb6:                                              ; preds = %bb2
  store i32 -1, ptr %_0, align 4
  br label %bb20

bb20:                                             ; preds = %bb19, %bb6
  %14 = load i32, ptr %_0, align 4
  ret i32 %14

bb8:                                              ; preds = %bb15, %bb13, %bb5
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %15 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h40598a3aa449bd32E"(ptr align 8 %iter1) #20
  %16 = extractvalue { i64, i64 } %15, 0
  %17 = extractvalue { i64, i64 } %15, 1
  store i64 %16, ptr %_16, align 8
  %18 = getelementptr inbounds i8, ptr %_16, i64 8
  store i64 %17, ptr %18, align 8
  %_18 = load i64, ptr %_16, align 8
  %19 = getelementptr inbounds i8, ptr %_16, i64 8
  %20 = load i64, ptr %19, align 8
  %21 = trunc nuw i64 %_18 to i1
  br i1 %21, label %bb10, label %bb11

bb10:                                             ; preds = %bb8
  %22 = getelementptr inbounds i8, ptr %_16, i64 8
  %j = load i64, ptr %22, align 8
  %_22 = icmp ult i64 %i, 2
  br i1 %_22, label %bb12, label %panic3

bb11:                                             ; preds = %bb8
  %_28 = load i32, ptr %count, align 4
  %_31 = icmp eq i32 %_28, -2147483648
  %_32 = and i1 false, %_31
  br i1 %_32, label %panic, label %bb17

bb17:                                             ; preds = %bb11
  %_27 = srem i32 %_28, 2
  %_26 = icmp ne i32 %_27, 0
  br i1 %_26, label %bb18, label %bb2

panic:                                            ; preds = %bb11
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_bc35e2a45bd1b113a31b74d5da646de6) #22
  unreachable

bb18:                                             ; preds = %bb17
  %_33 = icmp ult i64 %i, 2
  br i1 %_33, label %bb19, label %panic2

bb19:                                             ; preds = %bb18
  %23 = getelementptr inbounds nuw i32, ptr %arr, i64 %i
  %24 = load i32, ptr %23, align 4
  store i32 %24, ptr %_0, align 4
  br label %bb20

panic2:                                           ; preds = %bb18
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_4f120a0ee4475ca39e2f1162a813d301) #22
  unreachable

bb12:                                             ; preds = %bb10
  %25 = getelementptr inbounds nuw i32, ptr %arr, i64 %i
  %_21 = load i32, ptr %25, align 4
  %_24 = icmp ult i64 %j, 2
  br i1 %_24, label %bb13, label %panic4

panic3:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_6257a6f1348d598c377db2de57554403) #22
  unreachable

bb13:                                             ; preds = %bb12
  %26 = getelementptr inbounds nuw i32, ptr %arr, i64 %j
  %_23 = load i32, ptr %26, align 4
  %_20 = icmp eq i32 %_21, %_23
  br i1 %_20, label %bb14, label %bb8

panic4:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %j, i64 2, ptr align 8 @alloc_eb67a3abe77f3ba1662b05958491d936) #22
  unreachable

bb14:                                             ; preds = %bb13
  %27 = load i32, ptr %count, align 4
  %28 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %27, i32 1)
  %_25.0 = extractvalue { i32, i1 } %28, 0
  %_25.1 = extractvalue { i32, i1 } %28, 1
  br i1 %_25.1, label %panic5, label %bb15

bb15:                                             ; preds = %bb14
  store i32 %_25.0, ptr %count, align 4
  br label %bb8

panic5:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_3c8a15c703705113a8ce6e1fa02e803f) #22
  unreachable

bb4:                                              ; No predecessors!
  unreachable
}
